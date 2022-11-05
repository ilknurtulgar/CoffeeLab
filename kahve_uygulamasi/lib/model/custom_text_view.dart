import 'package:flutter/material.dart';

class CustomTextModel {
  final String text;
  final double height;
  final double width;
  final Color color;
  final EdgeInsets padding;
  final TextStyle textStyle;
  final BorderRadius borderRadius;
  final TextAlign textAlign;
  CustomTextModel(
      {required this.height,
      required this.width,
      required this.color,
      required this.padding,
      required this.textStyle,
      required this.borderRadius,
      required this.textAlign,
      required this.text});
}

class CustomTextBox extends CustomTextModel {
  final String text2;
  CustomTextBox({
    required super.color,
    required super.text,
    required super.borderRadius,
    required super.height,
    required super.padding,
    required super.textAlign,
    required super.textStyle,
    required super.width,
    required this.text2,
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