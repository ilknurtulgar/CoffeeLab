import 'package:flutter/material.dart';

import '../../../core/base/util/base_utility.dart';
import '../../../model/coffee/coffeUI_data/coffe_definitions.dart';
import 'custom_text.dart';

Container TextContainer(String txt1, String txt2) {
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
              txt1,
              PaddingUtility.coffeNamePading,
              TextStyleView.fontSizePage3,
              AppComponentSizes.big_Width,
              AlignUtility.textAlign),
          CustomText(
              CoffeDefinitions.flatWhite,
              PaddingUtility.textPading,
              TextStyleView.fontSizeSuggestion,
              AppComponentSizes.text_Width,
              AlignUtility.textAlign),
        ],
      ));
}
