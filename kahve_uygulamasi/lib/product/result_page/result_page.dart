import 'package:flutter/material.dart';
import '../../core/base/util/base_utility.dart';
import '../../model/coffee/coffee_view_model/coffee_models.dart';
import 'text/text_container.dart';
import '../../components/image/custom_image.dart';
import 'card/suggestion.dart';

class ResultPageScreen extends StatelessWidget {
  const ResultPageScreen({super.key, required this.coffeData});
  final CoffeeViewModel coffeData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                child: customImage(coffeData.coffee.coffeeImagAsset,
                    AppMargin.containersMargin, AppComponentSizes.bigWidth),
              ),
              Expanded(
                flex: 7,
                child: suggestions(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding suggestions() {
    return Padding(
      padding: PaddingUtility.listviewPadding,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => suggestion(
            coffeData.suggestions[index].coffeeImagAsset,
            coffeData.suggestions[index].coffeeName),
        itemCount: coffeData.suggestions.length,
      ),
    );
  }
}
