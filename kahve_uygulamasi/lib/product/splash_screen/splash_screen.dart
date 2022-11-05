import 'package:flutter/material.dart';

import '../../components/sizedbox/sized_box.dart';
import '../../components/text/positionedtext/positioned_text.dart';
import '../../core/base/util/base_utility.dart';
import '../home_screen/home_screen.dart';
import 'image_pages_views.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int seconds = 2;
  @override
 void initState() {
    super.initState();
    Future.delayed(Duration(seconds: seconds), () async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        imagePageViews(),
        mainTextViewin(AppColor.koromiko),
       // SizedBoxView(),
        bottomTextViewon(AppColor.white),
      ]),
    );
  }

//kahve asistanı ve espresso bazlı kısmı renkleri tutmadı tekrar bak
  PositionedText bottomTextViewon(Color color) {
    return PositionedText(
        textColor: AppColor.koromiko,
        maintext: SplashTextView.bottomtextx,
        text: SplashTextView.bottomtext,
        textStyle: textStyleViewPage(color),
        left: CoffeeeAssistantPositioned.left,
        right: CoffeeeAssistantPositioned.right,
        bottom: CoffeeeAssistantPositioned.bottomx);
  }

  PositionedText mainTextViewin(Color color) {
    return PositionedText(
      textColor: AppColor.white,
      maintext: SplashTextView.maintextx,
      text: SplashTextView.maintext,
      textStyle: textStyleViewPage(color),
      top: MainPositioned.topx,
      left: MainPositioned.left,
      right: MainPositioned.right,
    );
  }

  TextStyle textStyleViewPage(color) => TextStyle(
      fontFamily: TextStyleView.fontFamily,
      fontSize: TextStyleView.fontSize,
      fontWeight: TextStyleView.fontWeight,
      color: color);
}
