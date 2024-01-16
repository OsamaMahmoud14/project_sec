import 'package:flutter/material.dart';

class customRow extends StatelessWidget {
  final String text;
  final String text2;
  final Widget page;

  const customRow({
    super.key, required this.text, required this.text2, required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: ()
            {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)
              {
                return page;
              }
              ));
            },
            child:  Text(
              text2,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff606060),
              ),
              textDirection: TextDirection.rtl,
            )),
        Text(
          text,
          style: TextStyle(
              color: Color(0xff606060),
              fontSize: 14,
              fontWeight: FontWeight.w300),
          textDirection: TextDirection.rtl,
        ),
      ],
    );
  }
}
