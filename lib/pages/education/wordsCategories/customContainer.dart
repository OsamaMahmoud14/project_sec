import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class customContainer extends StatelessWidget {
  final String image;
  final String text;
  final Color color;
  final double size;
  bool isPng = true;
  customContainer(
      {required this.image,
        required this.text,
        required this.color,
        required this.size,
        required this.isPng});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 172,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: [
            isPng
                ? SvgPicture.asset(
              image,
              fit: BoxFit.contain,
              alignment: Alignment.center,
              width: size,
            )
                : Image.asset(
              image,
              fit: BoxFit.contain,
              alignment: Alignment.center,
              width: size,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF4E888C),
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
