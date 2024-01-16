import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:project_sec/model/letterDetailsModel.dart';
import 'package:project_sec/model/numbersModel.dart';
import 'package:project_sec/pages/education/educationCategories.dart';
import 'package:project_sec/widgets/common.dart';

import '../../widgets/CategoryContainer.dart';
import '../../widgets/customElevatedButton.dart';

class numberDetails extends StatefulWidget {
  numberDetails({super.key});

  @override
  State<numberDetails> createState() => _numberDetailsState();
}

class _numberDetailsState extends State<numberDetails> {
  int currentindex = 0;
  final player=AudioPlayer();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF5FB),

      appBar: AppBar(
        leading: IconButton(
          icon:Icon(
              Icons.arrow_back_ios),
          onPressed: (){
            navigate(context: context, screen: EducationCategories());
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 12,right: 12),
            child: Row(
              children: [
                customContainer2(
                  text: numberDetailsModels.numberDetails[currentindex].letter,
                  color: Color(0xffFF5454),
                  pad: 0,
                  screen: SizedBox.shrink(),
                  image: 'assets/category.png',
                  width: 185,
                  height: 250.75,
                  isPng: false,
                  isLetter: true,

                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),

          Row(
            children: [

              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: customElevatedButton(
                    text: 'السابق',
                    onPressed: () {

                      setState(() {
                        if(currentindex<=0){

                          navigate(context: context, screen: EducationCategories());
                        }
                        player.play(AssetSource(numberDetailsModels.numberDetails[currentindex-1].path));
                        currentindex--;
                      });
                    },

                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),

              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10),

                  child: customElevatedButton(
                    text: 'التالي',
                    onPressed: () {
                      setState(() {
                        if(currentindex>=9){
                          navigate(context: context, screen: EducationCategories());
                        }
                        player.play(AssetSource(numberDetailsModels.numberDetails[currentindex+1].path));
                        currentindex++;
                      });

                    },

                  ),
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
