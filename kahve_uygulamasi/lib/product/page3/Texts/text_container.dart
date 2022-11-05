import 'package:flutter/material.dart';

import '../../../core/base/util/base_utility.dart';
import '../../../model/coffee/coffeUI_data/coffe_definitions.dart';
import 'custom_text.dart';

Container TextContainer(String coffeName, String coffeeInfo) {
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
          CustomText(
              coffeName,
              PaddingUtility.coffeNamePading,
              TextStyleView.fontSizePage3,
              AppComponentSizes.big_Width,
              AlignUtility.textAlign,
              TextStyleView.fontWeight),
          CustomText(
              coffeeInfo,
              PaddingUtility.textPading,
              TextStyleView.fontSizeSuggestion,
              AppComponentSizes.coffeName_Width,
              AlignUtility.textAlign,
              TextStyleView.fontWeightPage3),
        ],
      ));
}
