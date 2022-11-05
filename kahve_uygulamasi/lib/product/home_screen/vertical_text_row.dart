import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/components/custom_space.dart';
import 'package:kahve_uygulamasi/core/base/util/base_utility.dart';

import '../../core/base/util/ingredient_selection_utility.dart';

class VerticalTextRow extends StatelessWidget {
  const VerticalTextRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: IngredientChoosingUtility.alignment,
      children: [
        rotatedText(Titles.informationTitle,
            IngredientChoosingUtility.informationTitlePadding),
        Row(
          children: [
            rotatedText(Titles.trueCheckTitle,
                IngredientChoosingUtility.trueCheckTitlePadding),
            CustomSpace(0, 33),
            rotatedText(Titles.falseCheckTitle,
                IngredientChoosingUtility.falseCheckTitlePadding),
          ],
        ),
      ],
    );
  }

  Padding rotatedText(String title, EdgeInsets titlePadding) {
    return Padding(
      padding: titlePadding,
      child: RotatedBox(
          quarterTurns: 3,
          child: Text(
            title,
            style: buttonTextStyle(),
          )),
    );
  }
}

class Titles {
  static String informationTitle = 'içerik';
  static String trueCheckTitle = 'olsun';
  static String falseCheckTitle = 'olmasın';
}
