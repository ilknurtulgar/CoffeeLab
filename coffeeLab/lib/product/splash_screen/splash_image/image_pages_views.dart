import 'package:flutter/material.dart';

import '../../../core/base/util/image_utility.dart';

Container imagePageViews() {
  return Container(
    decoration: imageDecoration(),
  );
}

BoxDecoration imageDecoration() {
  return BoxDecoration(
    image: DecorationImage(
        image: AssetImage(
          ImageUtility.screenImageAsset,
        ),
        fit: BoxFit.fill),
  );
}
