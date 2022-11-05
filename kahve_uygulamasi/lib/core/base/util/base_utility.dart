import 'package:flutter/material.dart';

class AppColor {
  static Color koromiko = Color(0xFFFFB067);
  static Color white = Color(0xFFFFFFFF);
  static Color black = Color(0xFF000000);
  static Color wildSand = Color(0xFFF5F5F5);
  static Color apricotPeach = Color(0xFFFBDABC);
  static Color tacao = Color(0xFFEDBD90);
  static Color mineShaft = Color(0xFF333333);
  static Color merino = Color(0xFFF4ECE4);
  static Color transparent = Colors.transparent;
}

class AppComponentSizes {
  static double big_Width = 375; //kahve aciklamasi ve kahve resmi
  static double coffeName_Width = 400;
  static double text_Width = 300;
  static double scroll_Width = 220; //son sayfa bottom scroll componentler
  static double scroll_height = 180;
  static double coffe_exp_height = 150; //kahve aciklamasi kismi
  static double coffe_img_height = 430; //kahve fotografi
}

class AppMargin {
  static EdgeInsets columnMargin = EdgeInsets.symmetric(vertical: 0);
  static EdgeInsets containersMargin =
      EdgeInsets.only(bottom: 8, left: 20, right: 20);

  static EdgeInsets suggestionsMargin = EdgeInsets.only(
    right: 10,
    top: 3,
  );
}

class PaddingUtility {
  static EdgeInsets textPading = EdgeInsets.symmetric(horizontal: 8);
  static EdgeInsets coffeNamePading = EdgeInsets.only(top: 10);
  static EdgeInsets listviewPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets paddingOnly = EdgeInsets.only(left: 191, top: 70);
  static const EdgeInsets paddingonlyTab =
      EdgeInsets.only(top: 350, left: 150, right: 150);
  static const EdgeInsets paddingImage = EdgeInsets.only(left: 19, right: 19);
}

class AlignUtility {
  static const TextAlign textAlign = TextAlign.center;
  static TextAlign start = TextAlign.start;
}

TextStyle barTextStyle() =>
    TextStyle(fontSize: 15, fontWeight: FontWeight.w500);
TextStyle topTextStyle() =>
    TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "Poppins");

TextStyle buttonTextStyle() =>
    TextStyle(fontSize: 12, fontWeight: FontWeight.w600, fontFamily: "Poppins");

class AppRadius {
  static BorderRadius componentRadius = BorderRadius.circular(30);

  static const BorderRadius borderRadius =
      BorderRadius.all(Radius.circular(12));
  static const BorderRadius bordertopRadius =
      BorderRadius.all(Radius.circular(13));
}

class MainPositioned {
  static double left = 64;
  static double topx = 40;
  static double right = 60;
  static double top2x = 150;
}

class TextStyleView {
  static String fontFamily = "Amiri";
  static String fontFamilyPoppins = "Poppins";
  static double fontSizePage3 = 25;
  static double fontSizeSuggestion = 16;
  static double fontSize = 50;
  static FontWeight fontWeight = FontWeight.w700;
  static FontWeight fontWeightPage3 = FontWeight.w500;
}

class CoffeeeAssistantPositioned {
  static double left = 57;
  static double right = 58;
  static double bottomx = 50;
  static double bottom2x = 180;
}
