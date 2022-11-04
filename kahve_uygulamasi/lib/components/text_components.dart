import 'package:flutter/material.dart';

import '../core/base/util/base_utility.dart';

Container buildTextSuggestion(String coffeName) {
  return Container(
    width: AppComponentSizes.scroll_Width,
    padding: AppMargin.suggestionsMargin,
    child: Text(
      coffeName,
      textAlign: TextAlign.start,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600), //temporary
    ),
  );
}
