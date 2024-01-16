
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_sec/pages/education/wordsCategories/vegetables.dart';
import 'animalsCategories.dart';
import 'customContainer.dart';
import 'fruitsCategories.dart';
import 'furnitureCategories.dart';
class categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.add,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 10),
            child: Text(
              'القاموس ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
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
              Row(children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => fruitsCategories()));
                    },
                    child: customContainer(
                      image: 'assets/categoriesImages/Group.svg',
                      text: 'الفواكه',
                      color: Color(0xFFFEE2DC),
                      size: 90,
                      isPng: true,
                    )),
                customSpace(),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => vegetablesCategories()));
                    },
                    child: customContainer(
                      image: 'assets/categoriesImages/Vector.svg',
                      text: " الخضروات",
                      color: Color(0xFFD4EBDC),
                      size: 90,
                      isPng: true,
                    )),

                customSpace(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => animalsCategories()));
                  },
                  child: customContainer(
                    image: 'assets/categoriesImages/Group 55.svg',
                    text: 'الحيوانات',
                    color: Color(0xFFEAF3FE),
                    size: 80,
                    isPng: true,
                  ),
                ),
              ]),
              customSizedBox(),
              Row(children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => furnitureCategories()));
                    },
                    child: customContainer(
                      image: 'assets/categoriesImages/Vector.svg',
                      text: " الاثات",
                      color: Color(0xFFD4EBDC),
                      size: 90,
                      isPng: true,
                    )),
                customSpace(),
                customContainer(
                  image: 'assets/categoriesImages/Group (1).svg',
                  text: 'الالعاب',
                  color: Color(0xFFFEE2DC),
                  size: 90,
                  isPng: true,
                ),
                customSpace(),
                customContainer(
                  image: 'assets/categoriesImages/Group 55.svg',
                  text: 'الالوان',
                  color: Color(0xFFEAF3FE),
                  size: 80,
                  isPng: true,
                ),
              ]),
              customSizedBox(),
              Row(children: [
                customContainer(
                  image: 'assets/categoriesImages/Vector.svg',
                  text: " الخضروات",
                  color: Color(0xFFD4EBDC),
                  size: 90,
                  isPng: true,
                ),
                customSpace(),
                customContainer(
                  image: 'assets/categoriesImages/Group.svg',
                  text: 'الفواكه',
                  color: Color(0xFFFEE2DC),
                  size: 90,
                  isPng: true,
                ),
                customSpace(),
                customContainer(
                  image: 'assets/categoriesImages/Group 55.svg',
                  text: 'الحيوانات',
                  color: Color(0xFFEAF3FE),
                  size: 80,
                  isPng: true,
                ),
              ]),
              customSizedBox(),
              Row(children: [
                customContainer(
                  image: 'assets/categoriesImages/Vector.svg',
                  text: " الخضروات",
                  color: Color(0xFFD4EBDC),
                  size: 90,
                  isPng: true,
                ),
                customSpace(),
                customContainer(
                  image: 'assets/categoriesImages/Group.svg',
                  text: 'الفواكه',
                  color: Color(0xFFFEE2DC),
                  size: 90,
                  isPng: true,
                ),
                customSpace(),
                customContainer(
                  image: 'assets/categoriesImages/Group 55.svg',
                  text: 'الحيوانات',
                  color: Color(0xFFEAF3FE),
                  size: 80,
                  isPng: true,
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class customSpace extends StatelessWidget {
  const customSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 5,
    );
  }
}

class customSizedBox extends StatelessWidget {
  const customSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
    );
  }
}

