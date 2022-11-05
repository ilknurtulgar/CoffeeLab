import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/model/coffee/coffeUI_data/random_text.dart';
import 'package:kahve_uygulamasi/model/custom_text_view.dart';
import '../../../core/base/util/base_utility.dart';

final String _textBox = "KAHVENDE NELER OLSUN?";

//yeni yazdığım textview.dartdakini kullan
/*CustomTextBox customTextBox() {
  return CustomTextBox(
      customTextModel: CustomTextModel,

      //borderColor: AppColor.white,
      borderRadius: AppRadius.bordertopRadius,

      // textStyle: barTextStyle(),
      // color: Color(0xffFBDABC),
      height: 110,
      text1: randomtext[Random().nextInt(6)],
      width: 180);
}*/

CustomTextModel customTextModelBox = CustomTextModel(
    height: 50,
    width: 210,
    color: Color(0xffFBDABC),
    textStyle: topTextStyle(),
    borderRadius: AppRadius.borderRadius,
    text: _textBox);

CustomTextModel customTextModelRandom = CustomTextModel(
    height: 110,
    width: 180,
    color: Color(0xffFBDABC),
    textStyle: barTextStyle(),
    borderRadius: AppRadius.bordertopRadius,
    text: randomtext[Random().nextInt(6)]);
    

/*CustomTextBox customText() {
  return CustomTextBox(
      borderRadius: AppRadius.borderRadius,
      textAlign: AlignUtility.textAlign,
      textStyle: topTextStyle(),
      color: Color(0xffFBDABC),
      height: 50,
      text1: ,
      width: 210);
}*/

