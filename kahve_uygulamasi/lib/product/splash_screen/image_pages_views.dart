import 'package:flutter/material.dart';

Container imagePageViews() {
  return Container(
    decoration: imageDecoration(),
  );
}

BoxDecoration imageDecoration() {
  return BoxDecoration(
    image: DecorationImage(
        image: AssetImage(
          "assets/flatwhite.jpg",
        ),
        fit: BoxFit.cover),
  );
}
