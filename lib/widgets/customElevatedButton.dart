import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customElevatedButton extends StatelessWidget
{
  @override
  final String text;
  final VoidCallback onPressed;

   customElevatedButton({super.key, required this.text, required this.onPressed,});
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed:  onPressed,
      style: Theme.of(context).elevatedButtonTheme.style,
      child:Text(
        text,
          style:Theme.of(context).textTheme.displaySmall!.copyWith(
              color: Colors.white
          )
      ),
    );
  }

}