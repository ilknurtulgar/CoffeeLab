import 'package:flutter/material.dart';

class AppColor {
  static Color Koromiko = Color(0xFFFFB067);
  static Color White = Color(0xFFFFFFFF);
  static Color Black = Color(0xFF000000);
  static Color WildSand = Color(0xFFF5F5F5);
  static Color ApricotPeach = Color(0xFFFBDABC);
  static Color Tacao = Color(0xFFEDBD90);
  static Color MineShaft = Color(0xFF333333);
  static Color Merino = Color(0xFFF4ECE4);
}

class AppComponentSizes {
  static double big_Width = 375; //kahve aciklamasi ve kahve resmi
  static double scroll_Width = 220; //son sayfa bottom scroll componentler
  static double scroll_height = 180;
  static double coffe_exp_height = 150; //kahve aciklamasi kismi
  static double coffe_img_height = 430; //kahve fotografi
}

class AppMargin {
  static EdgeInsets columnMargin = EdgeInsets.symmetric(vertical: 10);
  static EdgeInsets listviewPadding = EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsets containersMargin =
      EdgeInsets.symmetric(vertical: 7, horizontal: 20);

  static EdgeInsets suggestionsMargin = EdgeInsets.only(right: 20, top: 10);
}

class AppRadius {
  static BorderRadius componentRadius = BorderRadius.circular(30);
}

class CoffeDefinitions {
  //yeri degisebilir
  static String Americano =
      " Americano sıcak su ekleyerek tek shot espressoya kaynatmak yöntemi ile hazırlanan kahve çeşidi.";
  static String Latte =
      "Tek shot espresso ve buharla ısıtılmış kıvamlı süt ile hazirlanan kahve çeşidi.";
  static String Mocha =
      'Tek shot espresso ,erimiş çikolata ve buharda ısıtılmış köpüklü süt ile hazırlanan kahve çeşidi.';
  static String Cappucino =
      'Tek shot espresso kıvamlı ve bol köpüklü süt ile hazırlanan kahve çeşidi.';
  static String FlatWhite =
      'Tek veya çift shot espresso ve kıvamlı süt ile hazırlanan kahve çeşidi.';
  static String CaramelMacchiato =
      'Tek veya çift shot espresso, kremamsı süt ve karamel aromasıyla hazırlanan kahve çeşidi.';
  static String WhiteChocolateMocha =
      'Tek shot espresso ,erimiş beyaz çikolata ve buharda ısıtılmış köpüklü süt ile hazırlanan kahve çeşidi.';
  static String Frappe =
      'Espresso ,süt ,krema ve buzla hazırlanan soüuk kahve çeşidi. ';
  static String Macchiato =
      'Tek veya iki shot espresso shot az miktarda buharda ısıtılmış süt ve süt köpüğü ile hazırlanan kahve çeşidi.';
  static String Espresso =
      'Kavrulmuş ve ince çekilmiş kahve tozunun içinden 90 derece sıcaklıkta suyun çok kısa bir sürede yüksek basınçla geçirilmesi ile hazırlanan kahve çeşidi.';
  static String IceAmericano =
      'Espresso soğuk su ve buz ile hazırlanan kahve çeşidi.';
}
