import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/core/base/util/base_utility.dart';
import 'package:kahve_uygulamasi/product/splash_screen/splash_screen.dart';

void main() {
  runApp(const KahveUygulamasi());
}

class KahveUygulamasi extends StatelessWidget {
  const KahveUygulamasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: AppColor.wildSand,
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
