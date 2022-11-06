import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/core/base/util/base_utility.dart';
import 'package:kahve_uygulamasi/model/text_model/custom_text_view.dart';

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
      child: _textView(),
      width: widget.customTextModel.width,
      height: widget.customTextModel.height,
      decoration: _boxDecoration(),
    );
  }

  Center _textView() {
    return Center(
      child: Padding(
        padding: PaddingUtility.boxPadding,
        child: textView(
            widget.customTextModel.text, widget.customTextModel.textStyle),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      borderRadius: widget.customTextModel.borderRadius,
      color: widget.customTextModel.color,
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
