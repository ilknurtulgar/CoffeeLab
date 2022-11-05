import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/core/base/util/base_utility.dart';

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
            const SizedBox(
              width: 33,
            ),
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

class IngredientChoosingUtility {
  static EdgeInsets informationTitlePadding = EdgeInsets.only(left: 10.0);
  static EdgeInsets trueCheckTitlePadding = EdgeInsets.zero;
  static EdgeInsets falseCheckTitlePadding = EdgeInsets.only(right: 19.0);
  static MainAxisAlignment alignment = MainAxisAlignment.spaceBetween;
  static Icon checkIcon = Icon(Icons.check_circle_outline);
}
