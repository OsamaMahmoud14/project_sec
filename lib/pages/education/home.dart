import 'package:flutter/material.dart';


import '../../widgets/CategoryContainer.dart';
import '../behaviors/situationscreen.dart';
import '../meeting/home_page.dart';
import '../screens/splash.dart';

class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF5FB),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: [
                  customContainer2(
                    text: 'تعليمي ',
                    pad: 0,
                    screen: splash(image: "assets/lottiefiles/Animation - 1701225676247.json", isSplash: false, image2: "assets/lottiefiles/Animation - 1701067442585.json",),
                    image: "assets/category.png",
                    width: 185,
                    height: 219.75,
                    isPng: false,
                    color: Color(0xFF306694),
                    isLetter: false,


                  ),
                  SizedBox(
                    width: 15,
                  ),
                  customContainer2(
                    text: 'سلوكي ',
                    pad: 10,
                    screen: SituationsScreen(),
                    image: "assets/category.png",
                    width: 185,
                    height: 219.75,
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
                    text: 'ترفيهي ',
                    pad: 0,
                    screen: splash(image: "assets/lottiefiles/Animation - 1701067343191.json", isSplash: false, image2: "assets/lottiefiles/Animation - 1701067442585.json",),
                    image: "assets/category.png",
                    width: 185,
                    height: 219.75,
                    isPng: false,
                    color: Color(0xFF306694),
                    isLetter: false,



                  ),
                  SizedBox(
                    width: 15,
                  ),
                  customContainer2(
                    text: ' تواصل ',
                    pad: 10,
                    screen: splash(image: "assets/lottiefiles/Animation - 1701227019082.json", isSplash: false, image2: "assets/lottiefiles/Animation - 1701067442585.json",),
                    image: "assets/category.png",
                    width: 185,
                    height: 219.75,
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
    );
  }
}
