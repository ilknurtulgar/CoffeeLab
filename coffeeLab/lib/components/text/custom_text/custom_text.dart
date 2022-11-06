import 'package:flutter/material.dart';

import '../../../core/base/util/base_utility.dart';
import '../../../model/text_model/custom_text_model.dart';

class CustomTextBoxs extends StatefulWidget {
  const CustomTextBoxs(
      {Key? key, required this.customTextModel, required this.borderColor})
      : super(key: key);
  final CustomTextModel customTextModel;
  final Color borderColor;
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
      decoration: _boxDecoration(widget.borderColor),
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

  BoxDecoration _boxDecoration(Color borderColor) {
    return BoxDecoration(
      borderRadius: widget.customTextModel.borderRadius,
      color: widget.customTextModel.color,
      border: Border.all(color: borderColor, width: 3),
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
