import 'package:flutter/material.dart';

import 'package:kahve_uygulamasi/model/coffee/coffeUI_data/coffee_classes.dart';

import '../../core/base/util/base_utility.dart';

import 'Texts/text_container.dart';
import 'custom_image.dart';
import 'suggestion.dart';

class Page3View extends StatelessWidget {
  const Page3View({super.key, required this.coffeData});
  final CoffeeViewModel coffeData;

  //TAMAMEN GECICI VERI ALINDIGINDA DEGISECEK
  final String tmpImageSrc =
      "https://www.eliteworldhotels.com.tr/Resources/Blog/ImageFile/evde-yapabileceginiz-birbirinden-ozel-9-kahve-tarifi_m.jpg";
  final String tmptxt = "ConPanna";
  final String tmptxt2 = "Americano";
  final String tmpdef =
      "Caffe Americano is made by one shot of an espresso and 2 shots of water.";
  final String tmpImagesrc2 =
      "https://kahvebaz.com/wp-content/uploads/2016/01/Latte-660x330.jpg";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.wildSand,
          body: Padding(
            padding: AppMargin.columnMargin,
            child: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: TextContainer(coffeData.coffee.coffeeName,
                      coffeData.coffee.coffeeInformation),
                ),
                Expanded(
                  flex: 14,
                  child: CustomImage(coffeData.coffee.coffeeImagAsset,
                      AppMargin.containersMargin, AppComponentSizes.big_Width),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    padding: PaddingUtility.listviewPadding,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => //degiistirilecek
                          Suggestion(
                              coffeData.suggestions[index].coffeeImagAsset,
                              coffeData.suggestions[index].coffeeName),
                      itemCount: coffeData.suggestions.length,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
