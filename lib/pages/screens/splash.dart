import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_sec/pages/entertainment/EntertainmentHome.dart';
import 'package:project_sec/pages/login.dart';
import 'package:project_sec/pages/meeting/home_page.dart';
import 'package:project_sec/pages/screens/onBoarding.dart';
import 'package:project_sec/widgets/common.dart';
import '../../constants/app_strings.dart';
import '../../helpers/services_locator.dart';
import '../../helpers/cache_helper.dart';
import '../education/educationCategories.dart';

class splash extends StatefulWidget {
late String image;
late String  image2 ;
 bool isSplash = true;

splash({required this.image,required this.image2, required this.isSplash});
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState()
  {
    bool isVisited =
        sl<CacheHelper>().getData(key: AppStrings.onBoardingKey) ?? false;

   Timer(Duration(seconds: 5), () {
       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>isVisited?login():onBoarding()));
       if(widget.image=="assets/lottiefiles/Animation - 1701067343191.json")
       {
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EntertainmentHome()));
       }
      else if(widget.image=="assets/lottiefiles/Animation - 1701067352884.json")
       {
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>splash(image: "assets/lottiefiles/Animation - 1701069330955.json", image2: "assets/lottiefiles/Animation - 1701067442585.json", isSplash: true)));
       }
       else if(widget.image =="assets/lottiefiles/Animation - 1701225676247.json")
       {
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EducationCategories()));

       }
       else if(widget.image =="assets/lottiefiles/Animation - 1701227019082.json")
       {
         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));

       }


   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Lottie.asset(widget.image),
          ),
      Container(
             child:widget.isSplash? Lottie.asset(widget.image2):SizedBox.shrink(),
      ),
        ],
      ),
    );
  }
}


// //assets/lottiefiles/Animation - 1701067277846.json == puzzle
// //assets/lottiefiles/Animation - 1701067343191.json == clown
// //assets/lottiefiles/Animation - 1701067383586.json == ball
// //assets/lottiefiles/Animation - 1701067442585.json = logo
// //assets/lottiefiles/Animation - 1701067457206.json = dog
// //assets/lottiefiles/Animation - 1701067352884.json = girl
// //assets/lottiefiles/Animation - 1701067435361.json = cat with vegetables
// //assets/lottiefiles/Animation - 1701069330955.json = boy
