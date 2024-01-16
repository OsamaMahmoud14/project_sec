
import 'package:flutter/material.dart';
import 'dart:ui';
// Meeting constants
class AppConstants {
  static const int appId = 1188141313;
  static const String appSign = '116b2528f5381674a170f3bd1d9b7ee1a8f2debed65d6b6508f4d4b0ed2a3514';
}




// animation in Matching Game


Route createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>  page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}


const kHeadingTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 64,
  fontWeight: FontWeight.w700,
  letterSpacing: 4.0,
);