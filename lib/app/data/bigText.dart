import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class BigTextSpan extends StatelessWidget {
  final Color? color;
  final String? text;
  final String? text2;
  final String? text3;
  final String? text4;
  final double size;
  BigTextSpan({
    Key? key,
    this.color,
    this.text,
    this.text2,
    this.text3,
    this.text4,
    this.size = 32,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: text,
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: size,
                fontWeight: FontWeight.bold,
              ))),
          TextSpan(
              text: text2,
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                color: Color(0xffFFDC61),
                fontSize: size,
                fontWeight: FontWeight.bold,
              ))),
          TextSpan(
              text: text3,
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: size,
                fontWeight: FontWeight.bold,
              ))),
          TextSpan(
              text: text4,
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                color: Color(0xffFFDC61),
                fontSize: size,
                fontWeight: FontWeight.bold,
              ))),
        ]),
      ),
    );
  }
}
