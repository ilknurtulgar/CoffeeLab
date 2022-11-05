import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/core/base/util/base_utility.dart';
import 'package:kahve_uygulamasi/product/home_screen/home_screen.dart';
//import 'package:kahve_uygulamasi/model/coffee_classes.dart';
import 'package:kahve_uygulamasi/product/page3/page3view.dart';
import 'package:kahve_uygulamasi/product/splash_screen/splash_screen.dart';

void main() {
  runApp(KahveUygulamasi());
}

class KahveUygulamasi extends StatelessWidget {
  KahveUygulamasi({Key? key}) : super(key: key);
  //final CoffeeUtility deneme = CoffeeUtility();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: AppColor.wildSand,
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: HomeScreen(),
        ),
      ),
    );
  }
}
