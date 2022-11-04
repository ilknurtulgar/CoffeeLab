import 'dart:math';
import 'package:flutter/material.dart';
import 'package:kahve_uygulamasi/components/vertical_text_row.dart';
import 'package:kahve_uygulamasi/model/coffee_classes.dart';
import 'package:kahve_uygulamasi/product/page3/page3view.dart';
import 'custom_row_with_buttons.dart';
class IngredientSelection extends StatefulWidget {
  IngredientSelection({Key? key}) : super(key: key);

  @override
  State<IngredientSelection> createState() => _IngredientSelectionState();
}

class _IngredientSelectionState extends State<IngredientSelection> {
  Coffee kahve = Coffee();
  CoffeeUtility coffee_utility = CoffeeUtility();
  List<String> ingredientName = ['süt','buz','şeker','krema','sütlü çikolata','beyaz çikolata','karamel'];
  late List<bool?> ingredients=[kahve.sut,kahve.buz,kahve.seker,kahve.krema,kahve.sutluCikolata,kahve.beyazCikolata,kahve.karamel];
  late List<Function> callbackFunctions = [
    (bool upIngredient) {setState(() {kahve.sut = upIngredient;});},
    (bool upIngredient) {setState(() {kahve.buz = upIngredient;});},
    (bool upIngredient) {setState(() {kahve.seker = upIngredient;});},
    (bool upIngredient) {setState(() {kahve.krema = upIngredient;});},
    (bool upIngredient) {setState(() {kahve.sutluCikolata = upIngredient;});},
    (bool upIngredient) {setState(() {kahve.beyazCikolata = upIngredient;});},
    (bool upIngredient) {setState(() {kahve.karamel = upIngredient;});},
  ];
  void sendCoffee(CoffeeViewModel onerileriyleKahve) {
    Navigator.push(context,MaterialPageRoute(builder: (context) => Page3View(onerileriyleKahve: onerileriyleKahve),)); 
  }
  void determineCoffeeKind(Coffee kahve) {
    int randomNumber = 0;
    CoffeeUtility cu_in_function = CoffeeUtility();
    List<CoffeeViewModel> sutluSekersiz = [cu_in_function.macchiatoS,cu_in_function.cappucinoS,cu_in_function.flatWhiteS];
    if (kahve.sutluCikolata == true) {
      sendCoffee(coffee_utility.mochaS); //Mocha
    } else if (kahve.beyazCikolata == true) {
      sendCoffee(coffee_utility.whiteChocolateMochaS); // white chocolate mocha
    } else if (kahve.krema == true) {
      sendCoffee(coffee_utility.conPannaS); //con panna
    } else if (kahve.karamel == true) {
      sendCoffee(coffee_utility.caramelMacchiatoS); //caramel macchiato
    } else if (kahve.buz == true) {
      if (kahve.seker == true) {
        sendCoffee(coffee_utility.frappeS);//frappe
      } else {
        if (kahve.sut == true) {
          sendCoffee(coffee_utility.sogukLatteS);
        } //soguk latte
        else {
          sendCoffee(coffee_utility.iceAmericanoS); //ice americano
        }
      }
    } else if (kahve.sut == true) {
      if (kahve.seker == true) {
        sendCoffee(coffee_utility.sicakLatteS); //sicak latte
      } else {
        randomNumber = Random().nextInt(3);
        sendCoffee(sutluSekersiz[randomNumber]);
      }
    } else if (kahve.seker == true) {
      sendCoffee(coffee_utility.turkKahvesiS);//türk kahvesi
    } else {
      sendCoffee(coffee_utility.espressoS); //espresso
    }
  }
  void selectionControl(Coffee kahve) {
    late List<bool?> ingredients_in_function_coffee = [kahve.sut,kahve.buz,kahve.seker,kahve.krema,kahve.sutluCikolata,kahve.beyazCikolata,kahve.karamel];
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
    return Scaffold(
      body: Column(
          children: [
            Container(
                height: 411,
                width: 191,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 202, 143, 122)),
                child: Center(
                  child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
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
            SizedBox(
              height: 15,
            ),
            InkWell(//bu butonu şimdilik denemeler yapmak için geçici olarak koydum custom butonu yapıcam bugün
                onTap: (() { //bu printleri custom row buttonda basılan değerlerle karşılaştırma yapmak için kullandım.Sonradan silicez.
                  print('sut is ${kahve.sut}');
                  print('buz is ${kahve.buz}');
                  print('seker is ${kahve.seker}');
                  print('krema is ${kahve.krema}');
                  print('s çik is ${kahve.sutluCikolata}');
                  print('b çik is ${kahve.beyazCikolata}');
                  print('karamel is ${kahve.karamel}');
                  selectionControl(kahve);
                }),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.brown,
                  child: Text('sonuc butonu'),
                )),
          ],
        ),
    );
  }
}
