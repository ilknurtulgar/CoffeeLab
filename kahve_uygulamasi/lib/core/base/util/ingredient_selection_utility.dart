import 'package:flutter/material.dart';

import 'base_utility.dart';

class IngredientChoosingUtility {
  static const EdgeInsets informationTitlePadding = EdgeInsets.only(left: 10.0);
  static EdgeInsets trueCheckTitlePadding = EdgeInsets.zero;
  static const EdgeInsets falseCheckTitlePadding = EdgeInsets.only(right: 19.0);
  static MainAxisAlignment alignment = MainAxisAlignment.spaceBetween;
  static const Icon checkIcon = Icon(Icons.check_circle_outline);
  static const EdgeInsets alertDialogContentPadding =
      EdgeInsets.fromLTRB(12, 20, 12, 0);
  static EdgeInsets alertDialogActionPadding = EdgeInsets.zero;
  static String alertDialogWarningText =
      'Lütfen bütün malzemeler için seçim yapınız';

  static Color sendButtonColor = AppColor.apricotPeach;
  static String sendButtonText = "Kahveyi Yolla";
  static BorderRadius borderRadius = BorderRadius.circular(15);
  static double sendButtonHeight = 50;
  static double sendButtonWidth = 170;
  static EdgeInsets sendButtonPadding = EdgeInsets.zero;
  static TextAlign sendButtonTextAlign = TextAlign.center;
  static const TextStyle sendButtonTextStyle = TextStyle(fontSize: 16);
  static const Color selectionBackgroundColor = AppColor.tacao;
  static const Color alertDialogBackgroundColor = AppColor.wildSand;
  static double selectionContainerWidth = 200;
  static double selectionContainerHeight = 411;
  static MainAxisSize selectionContainerMainAxisSize = MainAxisSize.min;
}
