import 'package:flutter/material.dart';

import '../../../core/base/util/base_utility.dart';

Container customInformationText(String text, EdgeInsets padding_,
    double fontSize, double width, TextAlign align, FontWeight fontWeight) {
  return Container(
    width: width,
    padding: padding_,
    child: Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextStyleView.fontFamilyPoppins,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: AppColor.black),
    ),
  );
}
