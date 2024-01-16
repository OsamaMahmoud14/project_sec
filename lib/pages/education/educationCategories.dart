import 'package:flutter/material.dart';
import 'package:project_sec/pages/Quiz/welcome_screen.dart';
import 'package:project_sec/pages/education/home.dart';
import 'package:project_sec/pages/education/letterDetails.dart';
import 'package:project_sec/pages/education/numberDetails.dart';
import 'package:project_sec/pages/education/wordsCategories/categories.dart';
import 'package:project_sec/pages/youtubePlayer.dart';
import 'package:project_sec/widgets/CategoryContainer.dart';
import 'package:project_sec/widgets/common.dart';


class EducationCategories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xFFEEF5FB),
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
          navigate(context: context, screen: home());
          },
        icon:Icon(
            Icons.arrow_back_ios
        )  ,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: ListView(

          children: [
            Row(
              children: [
                customContainer2(
                    text: 'نطق الحروف',
                    pad: 0,
                    screen: letterDetails(),
                    image: 'assets/category.png',
                    width: 185,
                    height: 219.75,
                    isPng: false,
                  color: Color(0xFF306694),
                  isLetter: false,

                ),
                SizedBox(
                  width: 5,
                ),
                customContainer2(
                    text: ' كتابه الحروف',
                    pad: 10,
                  screen: youtubePlayer(videoURL:'https://www.youtube.com/watch?v=aNNUdNhpSB8'),
                    image: 'assets/category.png',
                    width: 185,
                    height: 219.75,
                    isPng: false,
                  color: Color(0xFF306694),
                  isLetter: false,


                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [

                customContainer2(
                    text: 'نطق الارقام',
                    pad: 10,
                    screen: numberDetails(),
                    image: 'assets/category.png',
                    width: 185,
                    height: 219.75,
                    isPng: false,
                  color: Color(0xFF306694),
                  isLetter: false,


                ),
                SizedBox(
                  width: 5,
                ),
                customContainer2(
                  text: 'كتابه الارقام ',
                  pad: 0,
                  screen: youtubePlayer(videoURL:'https://www.youtube.com/watch?v=Qnr6dl0xQV4'),
                  image: 'assets/category.png',
                  width: 185,
                  height: 219.75,
                  isPng: false,
                  color: Color(0xFF306694),
                  isLetter: false,


                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                customContainer2(
                    text: 'كلمات',
                    pad: 0,
                    screen: categories(),
                    image: 'assets/category.png',
                    width: 185,
                    height: 219.75,
                    isPng: false,
                  color: Color(0xFF306694),
                  isLetter: false,


                ),
                SizedBox(
                  width: 5,
                ),
                customContainer2(
                    text: ' اختبار  ',
                    pad: 10,
                    screen: WelcomeScreen(),
                    image: 'assets/category.png',
                    width: 185,
                    height: 219.75,
                    isPng: false,
                  color: Color(0xFF306694),
                  isLetter: false,

                ),
              ],
            ),

          ],
        ),
      ),

    );
  }
}
