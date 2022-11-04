import 'package:flutter/material.dart';

import '../../../core/base/util/base_utility.dart';

Expanded containerImage() {
  return Expanded(
    child: Container(
      padding: PaddingUtility.paddingImage,
      height: 100,
      width: 114.25,
      child: Image.asset(
        "assets/flatwhite.jpg",
      ),
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
