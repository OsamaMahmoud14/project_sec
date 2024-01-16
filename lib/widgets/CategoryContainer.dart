import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_sec/model/letterDetailsModel.dart';

import 'package:project_sec/widgets/common.dart';



class customContainer2 extends StatefulWidget {
  const customContainer2({
    super.key,
    required this.text,
    required this.pad,
    required this.screen,
    required this.image,
    required this.width,
    required this.height,
    required this.isPng,
    required this.color,
    required this.isLetter,



  });

  final String text;
  final double ? pad;
  final Widget  screen;
  final String image;
  final double width;
  final double height;
  final bool isPng;
  final Color  color;
  final  bool isLetter;


  @override
  State<customContainer2> createState() => _customContainer2State();
}

class _customContainer2State extends State<customContainer2> {
  final player=AudioPlayer();
  int currentindex = 0;



  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ()
        {
          navigate(context: context, screen: widget.screen);
        },
        child: Container(
          margin: EdgeInsets.only(left: 10,right: widget.pad!),
          width: widget.width,
          height: widget.height,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),


          ),
          child: Column(
            children: [
              widget.isLetter?SizedBox.shrink():
              widget.isPng
                  ? SvgPicture.asset(
                widget.image,
                alignment: Alignment.center,
              )
                  : Image.asset(
                widget.image,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  color:widget.color?? Color(0xFF306694),
                  fontSize: widget.isLetter ?100: 25.03,
                  fontWeight: FontWeight.w900,
                  height: 0,

                ),
              ),
              widget.isLetter?
             GestureDetector(
               onTap: ()
               {

                 // player.play(AssetSource(letterDetailsModels.itemsDetails[currentindex++].path));



               },
               child: CircleAvatar(
                 backgroundColor: Color(0x7F306694),
                 radius: 32,
                 child: CircleAvatar(
                   radius: 25,
                   child: Icon(
                       Icons.volume_up_outlined,
                   ),




                  ),
               ),
             ):SizedBox.shrink(),
            ],
          ),

        ),
      ),
    );
  }
}
