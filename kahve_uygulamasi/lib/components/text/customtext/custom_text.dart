import 'package:de2/companent/text/customtext/text_view.dart';
import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  const CustomText({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    required this.padding,
    required this.textStyle,
    required this.borderRadius,
    required this.textAlign,
    required this.text1,
    this.text2,
    this.onTap,
  }) : super(key: key);
  final String text1;
  final String? text2;

  final double height;
  final double width;
  final Color color;
  final EdgeInsets padding;
  final TextStyle textStyle;
  final BorderRadius borderRadius;
  final TextAlign textAlign;
  final Function()? onTap;

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              TextView(widget.text1, widget.textStyle),
              TextView(widget.text2, widget.textStyle),
            ],
          ),
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: widget.borderRadius,
            color: widget.color,
          ),
        ),
      ),
    );
  }

  Text TextView(String? text, TextStyle textStyle) {
    return Text(
      text ?? "",
      textAlign: widget.textAlign,
      style: textStyle,
    );
  }
}
