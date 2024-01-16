import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed,this.backgroundColor= Colors.purple});
  final String text;
  final VoidCallback onPressed;
  final  Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
        backgroundColor:MaterialStateProperty.all(backgroundColor) 
      ),
      child: Text(
        text,
      ),
    );
  }
}
