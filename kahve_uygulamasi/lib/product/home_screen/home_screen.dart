import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/components/buttons/custom_button.dart';
import 'package:kahve_uygulamasi/components/ingredient_selection.dart';
import 'package:kahve_uygulamasi/components/text/customtext/text_view.dart';
import '../../model/coffee/coffeUI_data/coffee_classes.dart';
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
      width: 200,
      ontap: (() => selectionControl(kahve)));
  Coffee kahve = Coffee();
  CoffeeViewModelUtility coffee_utility = CoffeeViewModelUtility();
  void sendCoffee(CoffeeViewModel coffeeData) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Page3View(coffeData: coffeeData),
        ));
  }

  void determineCoffeeKind(Coffee kahve) {
    int randomNumber = 0;
    CoffeeViewModelUtility cu_in_function = CoffeeViewModelUtility();
    List<CoffeeViewModel> sutluSekersiz = [
      cu_in_function.macchiatoVM,
      cu_in_function.cappucinoVM,
      cu_in_function.flatWhiteVM
    ];
    if (kahve.sutluCikolata == true) {
      sendCoffee(coffee_utility.mochaVM); //Mocha
    } else if (kahve.beyazCikolata == true) {
      sendCoffee(coffee_utility.whiteChocolateMochaVM); // white chocolate mocha
    } else if (kahve.krema == true) {
      sendCoffee(coffee_utility.conPannaVM); //con panna
    } else if (kahve.karamel == true) {
      sendCoffee(coffee_utility.caramelMacchiatoVM); //caramel macchiato
    } else if (kahve.buz == true) {
      if (kahve.seker == true) {
        sendCoffee(coffee_utility.frappeVM); //frappe
      } else {
        if (kahve.sut == true) {
          sendCoffee(coffee_utility.iceLatteVM);
        } //soguk latte
        else {
          sendCoffee(coffee_utility.iceAmericanoVM); //ice americano
        }
      }
    } else if (kahve.sut == true) {
      if (kahve.seker == true) {
        sendCoffee(coffee_utility.latteVM); //sicak latte
      } else {
        randomNumber = Random().nextInt(3);
        sendCoffee(sutluSekersiz[randomNumber]);
      }
    } else if (kahve.seker == true) {
      sendCoffee(coffee_utility.turkKahvesiVM); //türk kahvesi
    } else {
      sendCoffee(coffee_utility.espressoVM); //espresso
    }
  }

  void selectionControl(Coffee kahve) {
    late List<bool?> ingredients_in_function_coffee = [
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
    for (i = 0; i < ingredients_in_function_coffee.length; i++) {
      if (ingredients_in_function_coffee[i] == null) {
        nullMalzemeSayisi++;
      }
    }
    if (nullMalzemeSayisi == 0) {
      determineCoffeeKind(kahve);
    } else {
      showDialog(
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
  }

  @override
  Widget build(BuildContext context) {
    /*SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black));*/
    return SafeArea(
      child: Scaffold(
          body: Row(
        children: [
          Expanded(
            flex: 1,
            child: ColumnImage(
              child: ListView(
                  clipBehavior: Clip.hardEdge,
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(
                    // growable: false,
                    7,
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
                  IngredientSelection(
                    kahve: kahve,
                  ),
                  CustomButton(buttonBox: buttonBox),
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
