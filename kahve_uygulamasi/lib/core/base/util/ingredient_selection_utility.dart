import 'package:flutter/material.dart';
class IngredientChoosingUtility {
  static EdgeInsets informationTitlePadding = const EdgeInsets.only(left: 10.0);
  static EdgeInsets trueCheckTitlePadding = EdgeInsets.zero;
  static EdgeInsets falseCheckTitlePadding = const EdgeInsets.only(right: 19.0);
  static MainAxisAlignment alignment = MainAxisAlignment.spaceBetween;
  static Icon checkIcon = const Icon(Icons.check_circle_outline);
  static EdgeInsets alertDialogContentPadding =const EdgeInsets.fromLTRB(12, 20, 12, 0);
  static EdgeInsets alertDialogActionPadding = EdgeInsets.zero;
  static String alertDialogWarningText ='Lütfen bütün malzemeler için seçim yapınız';
  static Color alertDialogBackgroundColor = Color.fromARGB(255, 225, 157, 133);
  static String sendButtonText = "Kahveyi Yolla";
  static BorderRadius borderRadius = BorderRadius.circular(15);
  static double sendButtonHeight = 50;
  static double sendButtonWidth = 170;
  static EdgeInsets sendButtonPadding = EdgeInsets.zero;
  static TextAlign sendButtonTextAlign = TextAlign.center;
  static TextStyle sendButtonTextStyle = TextStyle(fontSize: 16);
  static Color selectionBackgroundColor = Color.fromARGB(255, 202, 143, 122);
  static double selectionContainerWidth = 200;
  static double selectionContainerHeight = 411;
  static MainAxisSize selectionContainerMainAxisSize = MainAxisSize.min;
}