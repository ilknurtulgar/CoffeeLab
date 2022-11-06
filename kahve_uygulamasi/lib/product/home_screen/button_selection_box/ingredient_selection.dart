import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/product/home_screen/button_selection_box/vertical_text_row.dart';
import '../../../components/buttons/custom_row_with_buttons.dart';
import '../../../core/base/util/ingredient_selection_utility.dart';
import '../../../model/coffee/coffee_view_model/coffee_models.dart';

class IngredientSelection extends StatefulWidget {
  IngredientSelection({Key? key, required this.kahve}) : super(key: key);
  Coffee kahve;
  @override
  State<IngredientSelection> createState() => _IngredientSelectionState();
}

class _IngredientSelectionState extends State<IngredientSelection> {
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
            height: IngredientChoosingUtility.selectionContainerHeight,
            width: IngredientChoosingUtility.selectionContainerWidth,
            decoration: BoxDecoration(
                borderRadius: IngredientChoosingUtility.borderRadius,
                color: IngredientChoosingUtility.selectionBackgroundColor),
            child: Center(
              child: Column(
                  mainAxisSize:
                      IngredientChoosingUtility.selectionContainerMainAxisSize,
                  children: [VerticalTextRow(), ingredientRows()]),
            )),
      ],
    );
  }

  ListView ingredientRows() {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) => CustomRowWithButtons(
          coffeeIngredient: ingredients[index],
          coffeeIngredientName: ingredientName[index],
          callbackFunction: callbackFunctions[index]),
      shrinkWrap: true,
    );
  }
}

List<String> ingredientName = [
  'Süt',
  'Buz',
  'Şeker',
  'Krema',
  'Sütlü çikolata',
  'Beyaz çikolata',
  'Karamel'
];
