import 'package:de2/core/util/base_util.dart';
import 'package:flutter/material.dart';

class PositionedText extends StatelessWidget {
  const PositionedText(
      {Key? key,
      required this.text,
      required this.textStyle,
      this.top,
      required this.left,
      required this.right,
      this.bottom,
      required this.maintext,
      required this.textColor})
      : super(key: key);
  final String text;
  final String maintext;
  final TextStyle textStyle;
  final Color textColor;
  final double? top;
  final double left;
  final double right;
  final double? bottom;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Column(
        children: [
          textMethod(text, textStyle, ColorsUtilty.color),
          textMethod(maintext, textStyle, ColorsUtilty.colors),
        ],
      ),
      top: top,
      left: left,
      right: right,
      bottom: bottom,
    );
  }

//bu text customtext dekiyle çok benzer 1 tane olabilir.buna tekrar bak
  Text textMethod(String text, TextStyle textStyle, Color? textColor) {
    return Text(
      text,
      textAlign: SplashTextView.textAlign,
      style: textStyle.copyWith(
        color: textColor,
      ),
    );
  }
}

class SplashTextView {
  static String maintext = "Espresso ";
  static String maintextx = "bazlı ";
  static String bottomtext = "Kahve ";
  static String bottomtextx = "Asistanı ";

  static TextAlign textAlign = TextAlign.center;
}
