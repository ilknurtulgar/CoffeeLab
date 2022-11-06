import 'package:flutter/material.dart';

import '../../core/base/util/base_utility.dart';
import '../../core/base/util/ingredient_selection_utility.dart';

class CustomRowWithButtons extends StatefulWidget {
  CustomRowWithButtons({
    Key? key,
    required this.coffeeIngredient,
    required this.coffeeIngredientName,
    required this.callbackFunction,
  }) : super(key: key);
  bool? coffeeIngredient;
  String coffeeIngredientName;
  Function callbackFunction;
  @override
  State<CustomRowWithButtons> createState() => _CustomRowWithButtonsState();
}

class _CustomRowWithButtonsState extends State<CustomRowWithButtons> {
  List<bool> isSelected = [false, false];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: IngredientChoosingUtility.alignment,
        children: [
          Padding(
            padding: IngredientChoosingUtility.informationTitlePadding,
            child: _textVariable(),
          ),
          _toggleButtons(),
        ]);
  }

  Text _textVariable() {
    return Text(
      widget.coffeeIngredientName,
      style: buttonTextStyle(),
    );
  }

  ToggleButtons _toggleButtons() {
    return ToggleButtons(
      onPressed: ((index) {
        setState(() {
          for (int i = 0; i < 2; i++) {
            isSelected[i] = i == index;
          }
          if (index == 0) {
            widget.coffeeIngredient = true;
            widget.callbackFunction(widget.coffeeIngredient);
          } else {
            widget.coffeeIngredient = false;
            widget.callbackFunction(widget.coffeeIngredient);
          }
        });
      }),
      isSelected: isSelected,
      color: AppColor.black,
      borderColor: AppColor.transparent,
      selectedColor: AppColor.white,
      selectedBorderColor: AppColor.transparent,
      fillColor: AppColor.transparent,
      splashColor: AppColor.transparent,
      children: iconView,
    );
  }

  List<Widget> get iconView {
    return <Widget>[
      IngredientChoosingUtility.checkIcon,
      IngredientChoosingUtility.checkIcon,
    ];
  }
}
