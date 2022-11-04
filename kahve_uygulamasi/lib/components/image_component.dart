import 'package:flutter/material.dart';

import '../core/base/util/base_utility.dart';

Widget buildImage(String path) {
  return Container(
    width: AppComponentSizes.big_Width,
    //height: AppComponentSizes.coffe_img_height,
    margin: AppMargin.containersMargin,
    child: ClipRRect(
      borderRadius: AppRadius.componentRadius,
      child: Image(
        image: NetworkImage(path),
        fit: BoxFit.fill,
      ),
    ),
  );
}

Widget buildImageSuggestion(String imagePath) {
  return Container(
      child: ClipRRect(
        borderRadius: AppRadius.componentRadius,
        child: Image(
          image: NetworkImage(imagePath),
          fit: BoxFit.fill,
        ),
      ),
      width: AppComponentSizes.scroll_Width,
      decoration: BoxDecoration(
          color: AppColor.Merino, borderRadius: AppRadius.componentRadius));
}
