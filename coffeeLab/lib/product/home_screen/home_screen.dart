import 'dart:math';
import 'package:flutter/material.dart';
import '../../components/buttons/custom_button.dart';
import '../../components/text/custom_text/custom_text.dart';
import '../../core/base/util/base_utility.dart';
import '../../core/base/util/ingredient_selection_utility.dart';
import '../../model/coffee/coffeUI_data/coffee_uidata_model_utility.dart';
import '../../model/coffee/coffee_view_model/coffee_models.dart';
import '../../model/text_model/custom_text_model.dart';
import '../result_page/result_page.dart';
import 'button_selection_box/ingredient_selection.dart';
import 'column_image_box.dart/column_image_box.dart';
import 'customTextBox/custom_text_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ButtonBox buttonBox = ButtonBox(
      borderRadius: IngredientChoosingUtility.borderRadius,
      text: IngredientChoosingUtility.sendButtonText,
      color: IngredientChoosingUtility.sendButtonColor,
      height: IngredientChoosingUtility.sendButtonHeight,
      width: IngredientChoosingUtility.sendButtonWidth,
      padding: IngredientChoosingUtility.sendButtonPadding,
      textAlign: IngredientChoosingUtility.sendButtonTextAlign,
      textStyle: IngredientChoosingUtility.sendButtonTextStyle,
      ontap: (() => selectionControl(kahve)));
  Coffee kahve = Coffee();
  CoffeeViewModelUtility coffeeUtility = CoffeeViewModelUtility();
  void sendCoffee(CoffeeViewModel coffeeData) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPageScreen(coffeData: coffeeData),
        ));
  }

  void determineCoffeeKind(Coffee kahve) {
    int randomNumber = 0;
    CoffeeViewModelUtility cuInFunction = CoffeeViewModelUtility();
    List<CoffeeViewModel> sutluSekersiz = [
      cuInFunction.macchiatoVM,
      cuInFunction.cappucinoVM,
      cuInFunction.flatWhiteVM
    ];
    if (kahve.sutluCikolata == true) {
      sendCoffee(coffeeUtility.mochaVM); //Mocha
    } else if (kahve.beyazCikolata == true) {
      sendCoffee(coffeeUtility.whiteChocolateMochaVM); // white chocolate mocha
    } else if (kahve.krema == true) {
      sendCoffee(coffeeUtility.conPannaVM); //con panna
    } else if (kahve.karamel == true) {
      sendCoffee(coffeeUtility.caramelMacchiatoVM); //caramel macchiato
    } else if (kahve.buz == true) {
      if (kahve.seker == true) {
        sendCoffee(coffeeUtility.frappeVM); //frappe
      } else {
        if (kahve.sut == true) {
          sendCoffee(coffeeUtility.iceLatteVM);
        } //soguk latte
        else {
          sendCoffee(coffeeUtility.iceAmericanoVM); //ice americano
        }
      }
    } else if (kahve.sut == true) {
      if (kahve.seker == true) {
        sendCoffee(coffeeUtility.latteVM); //sicak latte
      } else {
        randomNumber = Random().nextInt(3);
        sendCoffee(sutluSekersiz[randomNumber]);
      }
    } else if (kahve.seker == true) {
      sendCoffee(coffeeUtility.turkKahvesiVM); //türk kahvesi
    } else {
      sendCoffee(coffeeUtility.espressoVM); //espresso
    }
  }

  void selectionControl(Coffee kahve) {
    late List<bool?> ingredientsInFunctionCoffee = [
      kahve.sut,
      kahve.buz,
      kahve.seker,
      kahve.krema,
      kahve.sutluCikolata,
      kahve.beyazCikolata,
      kahve.karamel
    ];
    int i = 0;
    while (i < ingredientsInFunctionCoffee.length &&
        ingredientsInFunctionCoffee[i] != null) {
      i++;
    }
    if (i == ingredientsInFunctionCoffee.length) {
      determineCoffeeKind(kahve);
    } else {
      _showDialog();
    }
  }

  Future<dynamic> _showDialog() {
    return showDialog(
      context: context,
      builder: ((context) => AlertDialog(
            content: Text(
              IngredientChoosingUtility.alertDialogWarningText,
              style: buttonTextStyle(),
            ),
            contentPadding: IngredientChoosingUtility.alertDialogContentPadding,
            backgroundColor:
                IngredientChoosingUtility.alertDialogBackgroundColor,
            actionsPadding: IngredientChoosingUtility.alertDialogActionPadding,
            actions: [alertDialogTextButton(context)],
          )),
    );
  }

  final String shortDilogtext = "Tamam";
  TextButton alertDialogTextButton(BuildContext context) {
    return TextButton(
        onPressed: () => Navigator.pop(context),
        child: Text(
          shortDilogtext,
          style: buttonTextStyle(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Row(
        children: [
          Expanded(
            flex: 1,
            child: _columnImage(),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: ColumnCustomView(
                kahve: kahve,
                buttonBox: buttonBox,
              ),
            ),
          )
        ],
      )),
    );
  }

  ColumnImage _columnImage() {
    return ColumnImage(
      child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(
            imageUi.length,
            (index) => containerImage(index),
          )),
    );
  }
}

class ColumnCustomView extends StatefulWidget {
  const ColumnCustomView({
    Key? key,
    required this.kahve,
    required this.buttonBox,
  }) : super(key: key);

  final Coffee kahve;
  final ButtonBox buttonBox;

  @override
  State<ColumnCustomView> createState() => _ColumnCustomViewState();
}

class _ColumnCustomViewState extends State<ColumnCustomView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: Projectutility.mainAxisSize,
      children: [
        CustomTextBoxs(
          customTextModel: customTextModelBox,
          borderColor: AppColor.apricotPeach,
        ),
        customSpace(6, 0),
        IngredientSelection(
          kahve: widget.kahve,
        ),
        customSpace(6, 0),
        CustomButton(buttonBox: widget.buttonBox),
        customSpace(6, 0),
        CustomTextBoxs(
            customTextModel: customTextModelRandom,
            borderColor: AppColor.apricotPeach),
      ],
    );
  }
}

class Projectutility {
  static MainAxisSize mainAxisSize = MainAxisSize.min;
}
