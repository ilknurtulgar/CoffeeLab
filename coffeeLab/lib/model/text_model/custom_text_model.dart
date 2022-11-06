import 'package:flutter/material.dart';

class CustomTextModel {
  final String text;
  final double height;
  final double width;
  final Color color;
  final EdgeInsets? padding;
  final TextStyle textStyle;
  final BorderRadius borderRadius;
  final TextAlign? textAlign;
  CustomTextModel(
      {required this.height,
      required this.width,
      required this.color,
      this.padding,
      required this.textStyle,
      required this.borderRadius,
      this.textAlign,
      required this.text});
}

class CustomTextBox extends CustomTextModel {
  final String maintext;
  CustomTextBox({
    required super.color,
    required super.text,
    required super.borderRadius,
    required super.height,
    required super.padding,
    required super.textAlign,
    required super.textStyle,
    required super.width,
    required this.maintext,
  });
}

class ButtonBox extends CustomTextModel {
  final Function() ontap;
  ButtonBox(
      {required this.ontap,
      required super.borderRadius,
      required super.text,
      required super.color,
      required super.height,
      required super.padding,
      required super.textAlign,
      required super.textStyle,
      required super.width});
}
