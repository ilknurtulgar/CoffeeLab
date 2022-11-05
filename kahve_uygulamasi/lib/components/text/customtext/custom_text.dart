import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/core/base/util/base_utility.dart';

class CustomText extends StatefulWidget {
  const CustomText({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    required this.textStyle,
    required this.borderRadius,
    required this.textAlign,
    required this.text1,
    this.text2,
    this.onTap,
    this.borderColor,
  }) : super(key: key);
  final String text1;
  final String? text2;

  final double height;
  final double width;
  final Color color;
  final TextStyle textStyle;
  final BorderRadius borderRadius;
  final TextAlign textAlign;
  final Function()? onTap;
  final Color? borderColor;

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: TextView(widget.text1, widget.textStyle),
        ),
      ),

      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
          borderRadius: widget.borderRadius,
          color: widget.color,
          border: Border.all(color: widget.borderColor ?? AppColor.koromiko)),
    );
  }

  Text TextView(String text, TextStyle textStyle) {
    return Text(
      text,
      textAlign: widget.textAlign,
      style: textStyle,
    );
  }
}
