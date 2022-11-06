import 'package:coffeeLab/product/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'core/base/util/base_utility.dart';

void main() {
  runApp(CoffeeLab());
}

class CoffeeLab extends StatelessWidget {
  CoffeeLab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.wildSand,
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SplashScreen(),
        ),
      ),
    );
  }
}
