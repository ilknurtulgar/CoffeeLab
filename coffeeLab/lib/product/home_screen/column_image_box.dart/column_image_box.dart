import 'package:flutter/material.dart';

import '../../../core/base/util/base_utility.dart';
import '../../../core/base/util/image_utility.dart';

Container containerImage(index) {
  return Container(
    margin: AppMargin.containerImageMargin,
    padding: ColumnSizeStyle.paddingImage,
    height: ColumnSizeStyle.imageHeight,
    width: ColumnSizeStyle.imageWidth,
    child: imageAsset(index),
  );
}

Image imageAsset(index) {
  return Image.asset(
    imageUi[index],
    fit: BoxFit.cover,
  );
}

class ColumnImage extends StatelessWidget {
  const ColumnImage({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ColumnSizeStyle.columnBoxPadding,
      child: Container(
          width: ColumnSizeStyle.columnBoxWidth,
          height: MediaQuery.of(context).size.height,
          color: ColumnSizeStyle.columnBoxColor,
          child: child),
    );
  }
}

List imageUi = [
  ImageUtility.cappucinoAsset,
  ImageUtility.caramelMacchiatoAsset,
  ImageUtility.espressoAsset,
  ImageUtility.flatWhiteAsset,
  ImageUtility.iceLatteAsset,
  ImageUtility.latteAsset,
  ImageUtility.macchiatoAsset,
  ImageUtility.turkKahvesiAsset,
  ImageUtility.iceAmericanoAsset,
];

class ColumnSizeStyle {
  static double imageHeight = 100;

  static double imageWidth = 114.25;
  static double columnBoxWidth = 138;
  static const EdgeInsets columnBoxPadding = EdgeInsets.only(left: 28);
  static const EdgeInsets paddingImage = EdgeInsets.only(left: 19, right: 19);
  static Color columnBoxColor = AppColor.black;
}
