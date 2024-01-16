import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'common.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final Color primaryColor;
  final Color secondaryColor;
  final Widget screen;

  CategoryCard({
    Key? key,
    required this.title,
    required this.primaryColor,
    required this.secondaryColor,
    required this.screen,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 10,
            color: Colors.grey[900]!.withOpacity(0.2),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            primaryColor,
            secondaryColor,
          ],
        ),
      ),
      height: 150.0,
      child: Material(
        type: MaterialType.transparency,
        borderRadius: BorderRadius.circular(20),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {
            navigate(context:context,screen: screen);
          },
          child: Container(
            alignment: Alignment.center,
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(20.0),
            ),
            child: Text(
              title,
              style: kHeadingTextStyle.copyWith(
                fontSize: 50.0,
                letterSpacing: 2.0,
              ),
              softWrap: false,
            ),
          ),
        ),
      ),
    );
  }
}
