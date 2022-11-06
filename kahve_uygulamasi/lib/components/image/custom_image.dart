import 'package:flutter/material.dart';

import '../../../core/base/util/base_utility.dart';

Widget customImage(
  String imagePath,
  EdgeInsets margin_,
  double width_,
) {
  return Container(
    width: width_,
    margin: margin_,
    child: ClipRRect(
      borderRadius: AppRadius.componentRadius,
      child: Image(
        image: AssetImage(imagePath),
        fit: BoxFit.fill,
      ),
    ),
  );
}
