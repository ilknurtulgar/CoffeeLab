import 'dart:math';
import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/components/vertical_text_row.dart';
import 'package:kahve_uygulamasi/model/coffee/coffeUI_data/coffee_classes.dart';
import 'package:kahve_uygulamasi/product/page3/page3view.dart';
import 'buttons/custom_row_with_buttons.dart';

class IngredientSelection extends StatefulWidget {
  IngredientSelection({Key? key, required this.kahve}) : super(key: key);
  Coffee kahve;
  @override
  State<IngredientSelection> createState() => _IngredientSelectionState();
}

class _IngredientSelectionState extends State<IngredientSelection> {
  CoffeeViewModelUtility coffee_utility = CoffeeViewModelUtility();
  List<String> ingredientName = [
    'süt',
    'buz',
    'şeker',
    'krema',
    'sütlü çikolata',
    'beyaz çikolata',
    'karamel'
  ];
  late List<bool?> ingredients = [
    widget.kahve.sut,
    widget.kahve.buz,
    widget.kahve.seker,
    widget.kahve.krema,
    widget.kahve.sutluCikolata,
    widget.kahve.beyazCikolata,
    widget.kahve.karamel
  ];
  late List<Function> callbackFunctions = [
    (bool upIngredient) {
      setState(() {
        widget.kahve.sut = upIngredient;
      });
    },
    (bool upIngredient) {
      setState(() {
        widget.kahve.buz = upIngredient;
      });
    },
    (bool upIngredient) {
      setState(() {
        widget.kahve.seker = upIngredient;
      });
    },
    (bool upIngredient) {
      setState(() {
        widget.kahve.krema = upIngredient;
      });
    },
    (bool upIngredient) {
      setState(() {
        widget.kahve.sutluCikolata = upIngredient;
      });
    },
    (bool upIngredient) {
      setState(() {
        widget.kahve.beyazCikolata = upIngredient;
      });
    },
    (bool upIngredient) {
      setState(() {
        widget.kahve.karamel = upIngredient;
      });
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 411,
            width: 191,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 202, 143, 122)),
            child: Center(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                VerticalTextRow(),
                ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) => CustomRowWithButtons(
                      coffeeIngredient: ingredients[index],
                      coffeeIngredientName: ingredientName[index],
                      callbackFunction: callbackFunctions[index]),
                  shrinkWrap: true,
                )
              ]),
            )),
      ],
    );
  }
}
