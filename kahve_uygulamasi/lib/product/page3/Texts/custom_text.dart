import 'package:flutter/material.dart';

import '../../../../core/base/util/base_utility.dart';

Container CustomText(String text, EdgeInsets padding_, double fontSize,
    double width, TextAlign align) {
  return Container(
    width: width,
    padding: padding_,
    child: Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextStyleView.fontFamilyPoppins,
          fontSize: fontSize,
          fontWeight: TextStyleView.fontWeightPage3,
          color: AppColor.black), //temporary
    ),
  );
}
