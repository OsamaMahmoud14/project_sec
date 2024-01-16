import 'dart:async';
import 'dart:core';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:project_sec/pages/entertainment/EntertainmentHome.dart';



import '../../../constants/app_colors.dart';
import '../../../constants/constants.dart';
import '../../../model/item.dart';

class animals extends StatefulWidget {
  final List<ItemModel> initialItems;
  final bool isAnimal;

  const animals({Key? key, required this.initialItems,required this.isAnimal,}) : super(key: key);

  @override
  State<animals> createState() => _animalsState();
}

class _animalsState extends State<animals> {
  late List<ItemModel> items;
  late List<ItemModel> items2;

  late int score;
  late bool gameOver;

  initGame() {
    gameOver = false;
    score = 0;

    // Initialize items2 with the original items list
    items2 = List<ItemModel>.from(items);

    // Shuffle only the items list
    items.shuffle();
    items2.shuffle();
  }

  @override
  void initState() {
    super.initState();
    // Use the initial items passed from the widget
    items = List<ItemModel>.from(widget.initialItems);
    initGame();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Score: ',
                        style:TextStyle(
                          fontSize: 22,
                          color: Colors.teal
                        )
                      ),
                      TextSpan(
                        text: '$score',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.teal

                        )
                      ),
                    ],
                  ),
                ),
              ),
              if (!gameOver)
                Row(
                  children: [
                    Spacer(),
                    Column(
                      children: items.map((item) {
                        return Container(
                          margin: EdgeInsets.all(8),
                          child: Draggable<ItemModel>(

                            data: item,

                            childWhenDragging:
                            widget.isAnimal?
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.image),
                              radius: 50,
                            ):CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(item.image,fit: BoxFit.fill,),
                              radius: 50,
                            ),

                            feedback:widget.isAnimal? CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.image),
                              radius: 35,
                            ):
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(item.image,fit: BoxFit.fill,),
                              radius: 35,
                            ),
                            child:
                            widget.isAnimal?CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.image),
                              radius: 35,
                            ):
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(item.image,fit: BoxFit.fill,),
                              radius: 40,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    buildColumn(),
                    Spacer(),
                  ],
                ),

              Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      result();

                    });
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'انهاء اللعبه ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  // Callback function to update the list based on the chosen category
  void updateItems(List<ItemModel> newItems) {
    setState(() {
      items = List<ItemModel>.from(newItems);
      items2 = List<ItemModel>.from(newItems);
      items.shuffle();
      items2.shuffle();
      initGame(); // Reset game state
    });
  }






  Column buildColumn() {
    return Column(
        children: items2.map((item) {
                return DragTarget<ItemModel>(
                  onAccept: (receivedItem) {
                    if (item.value == receivedItem.value ) {
                      setState(() {
                        items.remove(receivedItem);
                        items2.remove(item);
                        score += 10;
                        item.accepting = false;
                      });

                    } else {
                      setState(() {
                        score -= 5;
                        item.accepting = false;
                      });
                    }
                  },
                  onWillAccept: (receivedItem) {
                    setState(() {
                      item.accepting = true;
                    });
                    return true;
                  },
                  onLeave: (receivedItem) {
                    setState(() {
                      item.accepting = false;
                    });
                  },
                  builder: (context, acceptedItems, rejectedItem) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      // color:
                      //     item.accepting ? Colors.grey[488] : Colors.grey[280],
                    ),
                    alignment: Alignment.center,

                    height: widget.isAnimal?MediaQuery.of(context).size.width / 5.5:MediaQuery.of(context).size.width / 4.6,
                    width: MediaQuery.of(context).size.width / 2.8,
                    margin: EdgeInsets.all(8),
                    child: Text(
                      item.name,
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 22,
                      ),
                    ),
                  ),
                );
              }).toList()
    );
  }

  void result() {
    if (score == 100) {
      setState(() async {
        return await AwesomeDialog(
          context: context,
          dialogType: DialogType.success,
          animType: AnimType.TOPSLIDE,
          showCloseIcon: true,
          title: 'مبروك ',
          desc: 'شاطر انت كسبت ',
          btnCancelOnPress: () {


              Navigator.of(context).pushReplacement(createRoute(EntertainmentHome()));

            },
          btnCancelText: 'نروح لعبه تانيه ',
          btnOkOnPress: ()
          {
            Navigator.of(context).pushReplacement(createRoute(animals(initialItems: widget.initialItems, isAnimal: widget.isAnimal,)));
            },
          btnOkText: 'نلعب تاني ',



        ).show();
      });
    } else if (score < 100) {
      setState(() async {
        return await AwesomeDialog(
          context: context,
          dialogType: DialogType.ERROR,
          animType: AnimType.TOPSLIDE,
          showCloseIcon: true,
          title: 'معلش  ',
          desc: 'يلا نجرب تاني ',
          btnCancelOnPress: () {
            Navigator.of(context).pushReplacement(createRoute(EntertainmentHome()));
          },
          btnOkOnPress: () {
            Navigator.of(context).pushReplacement(createRoute(animals(initialItems: widget.initialItems, isAnimal: widget.isAnimal,)));




          },
          btnOkText: 'نلعب تاني ',
          btnCancelText: 'نروح لعبه تانيه ',

        ).show();

      });
    }
  }
}
