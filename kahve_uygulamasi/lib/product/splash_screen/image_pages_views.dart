import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/core/base/util/image_utility.dart';

Container imagePageViews() {
  return Container(
    decoration: imageDecoration(),
  );
}

BoxDecoration imageDecoration() {
  return BoxDecoration(
    image: DecorationImage(
        image: AssetImage(
          ImageUtility.cappucinoAsset,
        ),
        fit: BoxFit.cover),
  );
}
