import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../widgets/CategoryContainer.dart';
import 'categories.dart';
import 'customContainer.dart';

class vegetablesCategories extends StatelessWidget {
  const vegetablesCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFEEF5FB),

    appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          " الخضروات",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        leading: IconButton(
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
          left: 10.0,
          top: 5,
          right: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    customContainer2(
                      text:'طماطم' ,
                      pad:0 ,
                      image:'assets/categoriesImages/fresh-red-tomatoes 1.png',
                      screen: vegetablesCategories() ,
                      width: 140,
                      height: 185.75,
                      isPng: false,
                      color: Color(0xFF306694),
                      isLetter: false,


                    ),
                    customSpace(),

                    customContainer2(
                      text:'باذنجان' ,
                      pad:0 ,
                      image:'assets/categoriesImages/eggplant 1.png',
                      screen: vegetablesCategories() ,
                      width: 140,
                      height: 185.75,
                      isPng: false,
                      color: Color(0xFF306694),
                      isLetter: false,



                    ),
                    customSpace(),

                    customContainer2(
                      text:'خيار' ,
                      pad:0 ,
                      image:'assets/categoriesImages/fresh-red-tomatoes 1.png',
                      screen: vegetablesCategories() ,
                      width: 140,
                      height: 185.75,
                      isPng: false,
                      color: Color(0xFF306694),
                      isLetter: false,



                    ),
                  ],
                ),
              ),
              customSizedBox(),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    customContainer2(
                      text:'باذنجان' ,
                      pad:0 ,
                      image:'assets/categoriesImages/fresh-red-tomatoes 1.png',
                      screen: vegetablesCategories() ,
                      width: 140,
                      height: 185.75,
                      isPng: false,
                      color: Color(0xFF306694),
                      isLetter: false,


                    ),
                    customSpace(),

                    customContainer2(
                      text:'باذنجان' ,
                      pad:0 ,
                      image:'assets/categoriesImages/fresh-red-tomatoes 1.png',
                      screen: vegetablesCategories() ,
                      width: 140,
                      height: 185.75,
                      isPng: false,
                      color: Color(0xFF306694),
                      isLetter: false,



                    ),
                    customSpace(),

                    customContainer2(
                      text:'باذنجان' ,
                      pad:0 ,
                      image:'assets/categoriesImages/eggplant 1.png',
                      screen: vegetablesCategories() ,
                      width: 140,
                      height: 185.75,
                      isPng: false,
                      color: Color(0xFF306694),
                      isLetter: false,


                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    customContainer2(
                      text:'باذنجان' ,
                      pad:0 ,
                      image:'assets/categoriesImages/fresh-red-tomatoes 1.png',
                      screen: vegetablesCategories() ,
                      width: 140,
                      height: 185.75,
                      isPng: false,
                      color: Color(0xFF306694),
                      isLetter: false,



                    ),
                    customSpace(),

                    customContainer2(
                      text:'باذنجان' ,
                      pad:0 ,
                      image:'assets/categoriesImages/eggplant 1.png',
                      screen: vegetablesCategories() ,
                      width: 140,
                      height: 185.75,
                      isPng: false,
                      color: Color(0xFF306694),
                      isLetter: false,


                    ),
                    customSpace(),

                    customContainer2(
                      text:'باذنجان' ,
                      pad:0 ,
                      image:'assets/categoriesImages/eggplant 1.png',
                      screen: vegetablesCategories() ,
                      width: 140,
                      height: 185.75,
                      isPng: false,
                      color: Color(0xFF306694),
                      isLetter: false,


                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    customContainer2(
                      text:'باذنجان' ,
                      pad:0 ,
                      image:'assets/categoriesImages/eggplant 1.png',
                      screen: vegetablesCategories() ,
                      width: 140,
                      height: 185.75,
                      isPng: false,
                      color: Color(0xFF306694),
                      isLetter: false,



                    ),
                    customSpace(),

                    customContainer2(
                      text:'باذنجان' ,
                      pad:0 ,
                      image:'assets/categoriesImages/eggplant 1.png',
                      screen: vegetablesCategories() ,
                      width: 140,
                      height: 185.75,
                      isPng: false,
                      color: Color(0xFF306694),
                      isLetter: false,



                    ),
                    customSpace(),

                    customContainer2(
                      text:'باذنجان' ,
                      pad:0 ,
                      image:'assets/categoriesImages/eggplant 1.png',
                      screen: vegetablesCategories() ,
                      width: 140,
                      height: 185.75,
                      isPng: false,
                      color: Color(0xFF306694),
                      isLetter: false,


                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
