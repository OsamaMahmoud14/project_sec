import 'package:flutter/material.dart';

import 'categories.dart';
import 'customContainer.dart';


class furnitureCategories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 30,
          child: Text(
            " الاثاث",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w700,
              height: 0,
            ),
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
          left: 12.0,
          top: 12,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 131,
                    child: customContainer(

                      image: 'assets/categoriesImages/fridge2.png',
                      text: 'تلاجه ',
                      color: Colors.white,
                      size: 120,
                      isPng: false,
                    ),
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/fan.png',
                    text: 'مروحه',
                    color: Colors.white,
                    size: 66,
                    isPng: false,
                  ),
                  customSpace(),

                  SizedBox(
                    height: 160,
                    child: customContainer(
                      image: 'assets/categoriesImages/chair.png',
                      text: 'كرسي',
                      color: Colors.white,
                      size: 100,
                      isPng: false,
                    ),
                  ),
                ],
              ),
              customSizedBox(),
              Row(
                children: [
                  customContainer(

                    image: 'assets/categoriesImages/bed2.png',
                    text: 'سرير ',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/table2.png',
                    text: 'ترابيزه',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/window.png',
                    text: 'شباك',
                    color: Colors.white,
                    size: 120,
                    isPng: false,
                  ),
                ],
              ),
              customSizedBox(),
              Row(
                children: [
                  customContainer(

                    image: 'assets/categoriesImages/tv.png',
                    text: 'تلفزيون ',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  SizedBox(
                    height:147,
                    child: customContainer(
                      image: 'assets/categoriesImages/workspace.png',
                      text: 'مكتب',
                      color: Colors.white,
                      size: 100,
                      isPng: false,
                    ),
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/seater2.png',
                    text: 'كنبه',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                ],
              ),
              Row(
                children: [
                  customContainer(

                    image: 'assets/categoriesImages/house2.png',
                    text: 'بيت  ',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/table2.png',
                    text: 'ترابيزه',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/chair.png',
                    text: 'كرسي',
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
