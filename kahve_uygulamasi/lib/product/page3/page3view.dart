import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/model/coffee_classes.dart';

import 'components/text_components.dart';
import '../../core/base/util/base_utility.dart';
import 'components/build_image.dart';

class Page3View extends StatelessWidget {
  const Page3View({super.key, required this.onerileriyleKahve});
  final CoffeeWithSuggestion onerileriyleKahve;

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
                  child: txttemporary(tmptxt, tmpdef),
                ),
                Expanded(
                  flex: 14,
                  child: buildImage(tmpImageSrc, AppMargin.containersMargin,
                      AppComponentSizes.big_Width),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    padding: PaddingUtility.listviewPadding,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => //degiistirilecek
                          Suggestion(tmpImagesrc2, tmptxt2),
                      itemCount: 5,
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

//tamamen gecici
  Container txttemporary(String txt1, String txt2) {
    return Container(
      width: AppComponentSizes.big_Width,
      //height: AppComponentSizes.coffe_exp_height,
      margin: AppMargin.containersMargin,
      decoration: BoxDecoration(
          borderRadius: AppRadius.componentRadius, color: AppColor.tacao),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          txt1,
          style: TextStyle(
              color: AppColor.black, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: AppMargin.containersMargin,
          child: Text(
            txt2,
            style: TextStyle(
                color: AppColor.black,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        )
      ]),
    );
  }

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
            child: buildImage(
                imagePath, EdgeInsets.all(0), AppComponentSizes.scroll_Width),
          ),
        ),
        Expanded(
          flex: 1,
          child: buildTextSuggestion(coffeName),
        )
      ],
    );
  }
}
