import 'package:flutter/material.dart';

import 'categories.dart';
import 'customContainer.dart';

class animalsCategories extends StatelessWidget {
  const animalsCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 40,
          child: Text(
            " الحيوانات",
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
                  customContainer(

                    image: 'assets/categoriesImages/cow.png',
                    text: 'بقره ',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/lion.png',
                    text: 'اسد',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/hen.png',
                    text: 'دجاجه',
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

                    image: 'assets/categoriesImages/horse.png',
                    text: 'حصان ',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/sheep.png',
                    text: 'خروف',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/panda.png',
                    text: 'دب',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                ],
              ),
              Row(
                children: [
                  customContainer(

                    image: 'assets/categoriesImages/fox.png',
                    text: 'ثعلب ',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/dog.png',
                    text: 'كلب',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/cat.png',
                    text: 'قطه',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                ],
              ),
              Row(
                children: [
                  customContainer(

                    image: 'assets/categoriesImages/camel.png',
                    text: 'جمل ',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/sheep.png',
                    text: 'خروف',
                    color: Colors.white,
                    size: 100,
                    isPng: false,
                  ),
                  customSpace(),

                  customContainer(
                    image: 'assets/categoriesImages/horse.png',
                    text: 'حصان',
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
