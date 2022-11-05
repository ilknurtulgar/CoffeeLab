import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/core/base/util/base_utility.dart';
import 'package:kahve_uygulamasi/model/custom_text_view.dart';

class CustomTextBoxs extends StatefulWidget {
  const CustomTextBoxs({Key? key, required this.customTextModel})
      : super(key: key);
  final CustomTextModel customTextModel;
  @override
  State<CustomTextBoxs> createState() => _CustomTextBoxsState();
}

class _CustomTextBoxsState extends State<CustomTextBoxs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: textView(
              widget.customTextModel.text, widget.customTextModel.textStyle),
        ),
      ),
      width: widget.customTextModel.width,
      height: widget.customTextModel.height,
      decoration: _boxDecoration(),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      borderRadius: widget.customTextModel.borderRadius,
      color: widget.customTextModel.color,
      /* border: Border.all(
            color: widget.customTextModel.borderColor ?? AppColor.koromiko));*/
    );
  }

  Text textView(String text, TextStyle textStyle) {
    return Text(
      text,
      textAlign: AlignUtility.textAlign,
      style: textStyle,
    );
  }
}


/*class CustomText extends StatefulWidget {
  const CustomText({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    required this.textStyle,
    required this.borderRadius,
    required this.textAlign,
    required this.text1,
    // this.text2,
    // this.onTap,
    this.borderColor,
  }) : super(key: key);
  final String text1;
  //final String? text2;

  final double height;
  final double width;
  final Color color;
  final TextStyle textStyle;
  final BorderRadius borderRadius;
  final TextAlign textAlign;
  //final Function()? onTap;
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
          child: textView(widget.text1, widget.textStyle),
        ),
      ),
      width: widget.width,
      height: widget.height,
      decoration: _boxDecoration(),
    );
  }*/

  
