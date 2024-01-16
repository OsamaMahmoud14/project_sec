import 'package:flutter/material.dart';


class loginButton extends StatelessWidget {
  final String name;
  final Widget page;
  VoidCallback? onTap;

  loginButton({
    super.key, required this.name, required this.page, this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 44,

          decoration:BoxDecoration(
            color: const Color(0xff44CCDB),

            borderRadius: BorderRadius.circular(50),
          ),
          // onPressed: () {
          //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page));
          // },
          //

        child:  Center(
          child: Text(
              name,
              style: TextStyle(
                color: Color(0xffFBFBFB),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
        ),

      ),
    );
  }
}
