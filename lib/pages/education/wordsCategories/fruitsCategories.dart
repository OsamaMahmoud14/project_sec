import 'package:flutter/material.dart';

import 'categories.dart';
import 'customContainer.dart';


class fruitsCategories extends StatelessWidget {
  const fruitsCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            "  الفواكه ",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        leading:  IconButton(
          onPressed: ()
          {
            Navigator.of(context).pop();
          },
          icon:Icon
            (
            Icons.arrow_back_ios,
            color: Colors.black,
          ),

        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          top: 12,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    // onTap: ()
                    // {
                    //   Navigator.of(context).push(createRoute(words()));
                    // },
                    child: customContainer(

                      image: 'assets/categoriesImages/apple.png',
                      text: 'تفاح ',
                      color: Colors.white,
                      size: 100,
                      isPng: false,
                    ),
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/avocado.png',
                    text: 'افوكادو',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/banana.png',
                    text: 'موز',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                ],
              ),
              customSizedBox(),
              Row(
                children: [
                  customContainer(

                    image: 'assets/categoriesImages/cherry.png',
                    text: 'كريز ',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/kiwi.png',
                    text: 'كيوي',
                    color: Colors.white,
                    size:100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/orange.png',
                    text: 'برتقال',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                ],
              ),
              Row(

                children: [
                  customContainer(

                    image: 'assets/categoriesImages/apple.png',
                    text: 'تفاح ',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/pinenapple.png',
                    text: 'اناناس',
                    color: Colors.white,
                    size: 70,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/avocado.png',
                    text: 'افوكادو',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                ],
              ),
              Row(
                children: [
                  customContainer(

                    image: 'assets/categoriesImages/banana.png',
                    text: 'موز ',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/kiwi.png',
                    text: 'كيوي',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/orange.png',
                    text: 'برتقال',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
