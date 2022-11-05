import 'package:flutter/material.dart';

import '../../core/base/util/base_utility.dart';
import 'Texts/custom_text.dart';
import 'custom_image.dart';

Widget Suggestion(String imagePath, String coffeName) {
  return Column(
    children: [
      Expanded(
        flex: 5,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: AppRadius.componentRadius,
          ),
          margin: AppMargin.suggestionsMargin,
          elevation: 10,
          child: CustomImage(
              imagePath, EdgeInsets.all(0), AppComponentSizes.scroll_Width),
        ),
      ),
      Expanded(
        flex: 1,
        child: customText(
            coffeName,
            AppMargin.suggestionsMargin,
            TextStyleView.fontSizeSuggestion,
            AppComponentSizes.scroll_height,
            AlignUtility.start,
            TextStyleView.fontWeightPage3),
      )
    ],
  );
}
