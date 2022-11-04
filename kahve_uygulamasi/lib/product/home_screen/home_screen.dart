import 'package:flutter/material.dart';

import 'column_image_box.dart/column_image_box.dart';
import 'customTextBox/custom_text_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    /*SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black));*/
    return SafeArea(
      child: Scaffold(
          body: Row(
        children: [
          Column(
            children: [
              ColumnImage(
                child: ListView(
                    children: List.generate(
                  // growable: false,
                  7,
                  (index) => containerImage(),
                )),
              ),
            ],
          ),
          Column(
            children: [
              customText(),
              customTextBox(),
            ],
          )
        ],
      )),
    );
  }
}
