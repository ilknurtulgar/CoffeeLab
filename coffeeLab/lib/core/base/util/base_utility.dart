import 'package:flutter/material.dart';

class AppColor {
  static const Color koromiko = Color(0xFFFEBB5B);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color wildSand = Color(0xFFF5F5F5);
  static const Color apricotPeach = Color(0xFFFBDABC);
  static const Color tacao = Color(0xFFEDBD90);
  static const Color mineShaft = Color(0xFF333333);
  static const Color merino = Color(0xFFF4ECE4);
  static const Color transparent = Colors.transparent;
  static const Color brown = Colors.brown;
}

class AppComponentSizes {
  static double bigWidth = 375;
  static double coffeNameWidth = 400;
  static double textWidth = 300;
  static double scrollWidth = 220;
  static double scrollHeight = 180;

  static double coffeexpheight = 150;
  static double coffeimgheight = 430;
}

class AppMargin {
  static const EdgeInsets columnMargin = EdgeInsets.symmetric(vertical: 0);
  static const EdgeInsets containersMargin =
      EdgeInsets.only(bottom: 8, left: 20, right: 20);
  static const EdgeInsets suggestionsMargin = EdgeInsets.only(
    right: 10,
    top: 3,
  );
  static const EdgeInsets suggestionsTextMargin = EdgeInsets.only(
    right: 10,
    left: 10,
    top: 3,
  );
  static const EdgeInsets containerImageMargin = EdgeInsets.only(bottom: 15);
}

class PaddingUtility {
  static const EdgeInsets textPading = EdgeInsets.symmetric(horizontal: 8);
  static const EdgeInsets coffeNamePading = EdgeInsets.only(top: 10);
  static const EdgeInsets listviewPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets paddingOnly = EdgeInsets.only(left: 191, top: 70);
  static const EdgeInsets paddingonlyTab =
      EdgeInsets.only(top: 350, left: 150, right: 150);
  static const EdgeInsets boxPadding = EdgeInsets.all(5.0);
}

class MainPositioned {
  static double left = 64;
  static double topx = 40;
  static double right = 60;
  static double top2x = 150;
}

class CoffeeeAssistantPositioned {
  static double left = 57;
  static double right = 58;
  static double bottomx = 50;
  static double bottom2x = 180;
}

class AppRadius {
  static BorderRadius componentRadius = BorderRadius.circular(30);
  static const BorderRadius borderRadius =
      BorderRadius.all(Radius.circular(12));
  static const BorderRadius bordertopRadius =
      BorderRadius.all(Radius.circular(13));
}

class AlignUtility {
  static const TextAlign textAlign = TextAlign.center;
  static TextAlign start = TextAlign.start;
}

class TextStyleView {
  static const String fontFamily = "Amiri";
  static const String fontFamilyPoppins = "Poppins";
  static double fontSizefirst = 25;
  static double fontSizeSuggestion = 16;
  static double fontSize = 50;
  static FontWeight fontWeight = FontWeight.w700;
  static FontWeight fontWeightSecond = FontWeight.w500;
}

TextStyle barTextStyle() =>
    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500);
TextStyle topTextStyle() => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: TextStyleView.fontFamilyPoppins);

TextStyle buttonTextStyle() => const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: TextStyleView.fontFamilyPoppins,
    color: AppColor.black);

SizedBox customSpace(double? vertical, double? horizontal) {
  return SizedBox(
    height: vertical,
    width: horizontal,
  );
}

TextStyle textStyleViewPage(color) => TextStyle(
    fontFamily: TextStyleView.fontFamily,
    fontSize: TextStyleView.fontSize,
    fontWeight: TextStyleView.fontWeight,
    color: color);
