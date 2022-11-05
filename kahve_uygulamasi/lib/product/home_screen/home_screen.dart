import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/components/buttons/custom_button.dart';
import 'package:kahve_uygulamasi/product/home_screen/ingredient_selection.dart';
import '../../model/coffee/coffeUI_data/coffee_uidata_model_utility.dart';
import '../../model/coffee/coffee_view_model/coffee_models.dart';
import '../../model/custom_text_view.dart';
import '../page3/page3view.dart';
import 'column_image_box.dart/column_image_box.dart';
import 'customTextBox/custom_text_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ButtonBox buttonBox = ButtonBox(
      borderRadius: BorderRadius.circular(15),
      text: 'Kahveyi Yolla',
      color: Colors.brown,
      height: 50,
      padding: EdgeInsets.zero,
      textAlign: TextAlign.center,
      textStyle: TextStyle(fontSize: 16),
      width: 170,
      ontap: (() => selectionControl(kahve)));
  Coffee kahve = Coffee();
  CoffeeViewModelUtility coffeeUtility = CoffeeViewModelUtility();
  void sendCoffee(CoffeeViewModel coffeeData) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Page3View(coffeData: coffeeData),
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

    int nullMalzemeSayisi = 0;
    int i = 0;
    for (i = 0; i < ingredientsInFunctionCoffee.length; i++) {
      if (ingredientsInFunctionCoffee[i] == null) {
        nullMalzemeSayisi++;
      }
    }
    if (nullMalzemeSayisi == 0) {
      determineCoffeeKind(kahve);
    } else {
      _showDialog();
    }
  }

  Future<dynamic> _showDialog() {
    return showDialog(
      context: context,
      builder: ((context) => AlertDialog(
            content: Text('Lütfen bütün malzemeler için seçim yapınız'),
            backgroundColor: Color.fromARGB(255, 225, 157, 133),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'Tamam',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Row(
        children: [
          Expanded(
            flex: 1,
            child: ColumnImage(
              child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(
                    imageUi.length,
                    (index) => containerImage(index),
                  )),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  customText(),
                  SizedBox(
                    height: 5,
                  ),
                  IngredientSelection(
                    kahve: kahve,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomButton(buttonBox: buttonBox),
                  SizedBox(
                    height: 5,
                  ),
                  customTextBox(),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
