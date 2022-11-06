import 'package:flutter/material.dart';

import '../../model/text_model/custom_text_model.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({Key? key, required this.buttonBox}) : super(key: key);
  final ButtonBox buttonBox;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.buttonBox.ontap,
        child: Container(
            height: widget.buttonBox.height,
            width: widget.buttonBox.width,
            decoration: _boxDecoration(),
            child: Center(
              child: Text(widget.buttonBox.text,
                  style: widget.buttonBox.textStyle),
            )));
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
        borderRadius: widget.buttonBox.borderRadius,
        color: widget.buttonBox.color);
  }
}
