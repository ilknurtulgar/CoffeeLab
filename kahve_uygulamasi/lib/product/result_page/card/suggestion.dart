import 'package:flutter/material.dart';
import '../../../core/base/util/base_utility.dart';
import '../../../components/text/custom_text/custom_information_text.dart';
import '../../../components/image/custom_image.dart';

Widget suggestion(String imagePath, String coffeName) {
  return Column(
    children: [
      Expanded(
        flex: 5,
        child: suggestionCardImage(imagePath),
      ),
      Expanded(
        flex: 1,
        child: suggestionName(coffeName),
      )
    ],
  );
}

Container suggestionName(String coffeName) {
  return customInformationText(
      coffeName,
      AppMargin.suggestionsTextMargin,
      TextStyleView.fontSizeSuggestion,
      AppComponentSizes.scrollWidth,
      AlignUtility.start,
      TextStyleView.fontWeightSecond);
}

Card suggestionCardImage(String imagePath) {
  const double elevation = 10;
  const double none = 0;
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: AppRadius.componentRadius,
    ),
    margin: AppMargin.suggestionsMargin,
    elevation: elevation,
    child: customImage(
        imagePath, const EdgeInsets.all(none), AppComponentSizes.scrollWidth),
  );
}
