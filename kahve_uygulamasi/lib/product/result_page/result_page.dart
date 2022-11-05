import 'package:flutter/material.dart';

import '../../core/base/util/base_utility.dart';

import '../../model/coffee/coffee_view_model/coffee_models.dart';
import 'Texts/text_container.dart';
import 'custom_image.dart';
import 'suggestion.dart';

class ResultPageScreen extends StatelessWidget {
  const ResultPageScreen({super.key, required this.coffeData});
  final CoffeeViewModel coffeData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: AppColor.wildSand,
        body: Padding(
          padding: AppMargin.columnMargin,
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: textContainer(coffeData.coffee.coffeeName,
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
                        Suggestion(coffeData.suggestions[index].coffeeImagAsset,
                            coffeData.suggestions[index].coffeeName),
                    itemCount: coffeData.suggestions.length,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
