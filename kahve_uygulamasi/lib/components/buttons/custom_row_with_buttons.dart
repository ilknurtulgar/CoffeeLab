import 'package:flutter/material.dart';

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
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          widget.coffeeIngredientName,
          style: const TextStyle(color: Colors.black, fontSize: 12),
        ),
      ),
      _toggleButtons(),
    ]);
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
      color: Colors.black,
      borderColor: Colors.transparent,
      selectedColor:
          Colors.white, //bunun rengi de değişebilir şimdilik beyaz yaptım
      selectedBorderColor: Colors.transparent,
      fillColor: Colors.transparent,
      splashColor: Colors.transparent,
      children: IconView,
    );
  }

  List<Widget> get IconView {
    return <Widget>[
      IconBar.iconcheck,
      IconBar.iconcheck,
    ];
  }
}

class IconBar {
  static Icon iconcheck = Icon(Icons.check_circle_outline);
}
