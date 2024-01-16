import 'package:flutter/material.dart';

class customTextField extends StatefulWidget {
  final String  hintText;
  final IconData   icon;
  final bool isPassword ;
  final  controller;
  bool isobscure = false;
  Function(String)? onChanged;
  customTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.isPassword,
    this.controller,
    this.onChanged, required this.isobscure
  });

  @override
  State<customTextField> createState() => _customTextFieldState();
}

class _customTextFieldState extends State<customTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (data) {
          if (data!.isEmpty) {
            return 'field is required';
          }
        },
      onChanged: widget.onChanged,
      controller: widget.controller,
      obscureText: widget.isobscure?true:false,
      keyboardType:widget.isPassword? TextInputType.visiblePassword:TextInputType.emailAddress,
      decoration:  InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Color(0xff606060),
          fontSize: 18
        ),

        prefixIcon: Icon(
          widget.icon,
          color: Color(0xff606060),
        ),
         border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
      ),
        suffixIcon: widget.isPassword?


        IconButton(
          icon:Icon(Icons.remove_red_eye_outlined),
        onPressed: ()
        {
          setState(() {
            widget.isobscure=!widget.isobscure;
          });
        },
        )
            :
        Icon(
            Icons.ac_unit,color: Colors.white,
        ),
        )

    );
  }
}
// TextFormField(
// controller: Emailcontroller,
// decoration: InputDecoration(
// hintText: ,
// prefixIcon: Icon(
// Icons.
// color: Colors.grey,
//
// ),

//
// )
// ),
// ),
