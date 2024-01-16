import 'package:flutter/material.dart';
import 'package:project_sec/constants/app_colors.dart';


class CustomButton2 extends StatelessWidget {
  const CustomButton2({
    Key? key,
    required this.onPressed,
    required this.text,
     this.width=140,
  }) : super(key: key);
  final Function() onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: FloatingActionButton.extended(
        backgroundColor: AppColors.primary,
        icon: Icon(Icons.arrow_forward_ios),
        onPressed: onPressed,
        label: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
