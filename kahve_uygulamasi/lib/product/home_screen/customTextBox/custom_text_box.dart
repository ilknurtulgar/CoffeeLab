import 'dart:math';

import 'package:kahve_uygulamasi/model/coffee/coffeUI_data/random_text.dart';
import 'package:kahve_uygulamasi/model/text_model/custom_text_view.dart';
import '../../../core/base/util/base_utility.dart';

final String _textBox = "KAHVENDE NELER OLSUN?";

CustomTextModel customTextModelBox = CustomTextModel(
    height: TextUtilitiy.heightBox,
    width: TextUtilitiy.widthBox,
    color: AppColor.apricotPeach,
    textStyle: topTextStyle(),
    borderRadius: AppRadius.borderRadius,
    text: _textBox);

CustomTextModel customTextModelRandom = CustomTextModel(
    height: TextUtilitiy.heightRandomBox,
    width: TextUtilitiy.widthRandomBox,
    color: AppColor.apricotPeach,
    textStyle: barTextStyle(),
    borderRadius: AppRadius.bordertopRadius,
    text: randomtext[Random().nextInt(6)]);

class TextUtilitiy {
  static const double heightBox = 50;
  static const double widthBox = 210;
  static const double heightRandomBox = 110;
  static const double widthRandomBox = 180;
}
