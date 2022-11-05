import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/model/random_text.dart';

import '../../../components/text/customtext/custom_text.dart';
import '../../../core/base/util/base_utility.dart';

//yeni yazdığım textview.dartdakini kullan
CustomText customTextBox() {
  return CustomText(
      borderColor: AppColor.white,
      borderRadius: AppRadius.bordertopRadius,
      textAlign: AlignUtility.textAlign,
      textStyle: barTextStyle(),
      color: Color(0xffFBDABC),
      height: 100,
      text1: randomtext[Random().nextInt(6)],
      width: 200);
}

CustomText customText() {
  return CustomText(
      borderRadius: AppRadius.borderRadius,
      textAlign: AlignUtility.textAlign,
      textStyle: topTextStyle(),
      color: Color(0xffFBDABC),
      height: 60,
      text1: "KAHVENDE NELER OLSUN?",
      width: 120);
}
