import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/core/base/util/base_utility.dart';

void main() {
  runApp(const KahveUygulmasi());
}

class KahveUygulamasi extends StatelessWidget {
  const KahveUygulamasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: AppColor.WildSand,
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
