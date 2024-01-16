import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class customTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;

  const customTextButton(
      {super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      child: Text(text, style: Theme.of(context).textTheme.displaySmall),
    );
  }
}
