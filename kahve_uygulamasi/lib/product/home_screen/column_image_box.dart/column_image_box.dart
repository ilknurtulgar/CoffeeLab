import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/core/base/util/image_utility.dart';

import '../../../core/base/util/base_utility.dart';

Container containerImage(index) {
  return Container(
    margin: EdgeInsets.only(bottom: 15),
    padding: PaddingUtility.paddingImage,
    height: 100,
    width: 114.25,
    child: Image.asset(
      imageUi[index],
      fit: BoxFit.cover,
    ),
  );
}

class ColumnImage extends StatelessWidget {
  const ColumnImage({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Container(
          width: 138,
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
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
