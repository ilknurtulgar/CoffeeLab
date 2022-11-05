import 'package:flutter/material.dart';

import '../../../core/base/util/base_utility.dart';
import 'custom_text.dart';

Container textContainer(String coffeName, String coffeeInfo) {
  return Container(
      width: AppComponentSizes.big_Width,
      margin: AppMargin.containersMargin,
      decoration: BoxDecoration(
        borderRadius: AppRadius.componentRadius,
        color: AppColor.tacao,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customText(
              coffeName,
              PaddingUtility.coffeNamePading,
              TextStyleView.fontSizePage3,
              AppComponentSizes.big_Width,
              AlignUtility.textAlign,
              TextStyleView.fontWeight),
          customText(
              coffeeInfo,
              PaddingUtility.textPading,
              TextStyleView.fontSizeSuggestion,
              AppComponentSizes.coffeName_Width,
              AlignUtility.textAlign,
              TextStyleView.fontWeightPage3),
        ],
      ));
}
