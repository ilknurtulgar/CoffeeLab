import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/model/random_text.dart';

import '../../../components/text/customtext/custom_text.dart';

//yeni yazdığım textview.dartdakini kullan
CustomText customTextBox() {
  return CustomText(
      borderRadius: RadiusUtility.bordertopRadius,
      padding: PaddingUtility.paddingonlyTab,
      textAlign: AlignUtility.textAlign,
      textStyle: barTextStyle(),
      color: Color(0xffFBDABC),
      height: 193,
      text1: randomtext[Random().nextInt(6)],
      width: 196);
}

CustomText customText() {
  return CustomText(
      borderRadius: RadiusUtility.borderRadius,
      padding: PaddingUtility.paddingOnly,
      textAlign: AlignUtility.textAlign,
      textStyle: topTextStyle(),
      color: Color(0xffFBDABC),
      height: 66,
      text1: "KAHVENDE NELER OLSUN?",
      width: 213);
}
