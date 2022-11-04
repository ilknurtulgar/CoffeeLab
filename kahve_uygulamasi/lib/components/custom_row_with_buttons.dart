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
   return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          widget.coffeeIngredientName,
          style: const TextStyle(color: Colors.black, fontSize: 12),
        ),
      ),
      ToggleButtons(
        onPressed: ((index) {
          setState(() {
            for (int i = 0; i < 2; i++) {
              isSelected[i] = i == index;
            }
            if (index == 0) {
              widget.coffeeIngredient = true;
              print(widget.coffeeIngredient);//yapılan işlemin sonucunu gözlemlemek için yazdım.Print sonradan silinecek.
              widget.callbackFunction(widget.coffeeIngredient);
            } else {
              widget.coffeeIngredient = false;
              print(widget.coffeeIngredient);
              widget.callbackFunction(widget.coffeeIngredient);
            }
          });
        }),
        isSelected: isSelected,
        color: Colors.black,
        borderColor: Colors.transparent,
        selectedColor: Colors.white,//bunun rengi de değişebilir şimdilik beyaz yaptım
        selectedBorderColor: Colors.transparent,
        fillColor: Colors.transparent,
        splashColor: Colors.transparent,
        children: <Widget>[
          Icon(Icons.check_circle_outline),
          Icon(Icons.check_circle_outline)
        ],
      ),
    ]);
  }
}
