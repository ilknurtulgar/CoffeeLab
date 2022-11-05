import 'package:kahve_uygulamasi/model/coffee/coffee_view_model/coffee_models.dart';

import '../coffee_view_model/coffee_models.dart';
import 'coffee_uidata_information.dart';

class CoffeeViewModelUtility extends CoffeeInformationModelUtility {
  late CoffeeViewModel caramelMacchiatoVM = CoffeeViewModel(
    coffee: caramelMacchiatoIM,
    suggestions: [mochaIM, latteIM, iceAmericanoIM],
  );
  late CoffeeViewModel frappeVM = CoffeeViewModel(
      coffee: frappeIM,
      suggestions: [
        iceLatteIM,
        mochaIM,
        whiteChocolateMochaIM,
        frappeIM,
        caramelMacchiatoIM
      ]);
  late CoffeeViewModel cappucinoVM = CoffeeViewModel(
    coffee: cappucinoIM,
    suggestions: [latteIM, macchiatoIM, flatWhiteIM],
  );
  late CoffeeViewModel flatWhiteVM = CoffeeViewModel(
    coffee: flatWhiteIM,
    suggestions: [cappucinoIM, macchiatoIM, espressoIM],
  );
  late CoffeeViewModel turkKahvesiVM = CoffeeViewModel(
    coffee: turkKahvesiIM,
    suggestions: [iceAmericanoIM, espressoIM],
  );
  late CoffeeViewModel iceLatteVM = CoffeeViewModel(
    coffee: iceLatteIM,
    suggestions: [mochaIM, whiteChocolateMochaIM, caramelMacchiatoIM],
  );
  late CoffeeViewModel latteVM = CoffeeViewModel(
    coffee: latteIM,
    suggestions: [mochaIM, whiteChocolateMochaIM, caramelMacchiatoIM],
  );
  late CoffeeViewModel mochaVM = CoffeeViewModel(
    coffee: mochaIM,
    suggestions: [whiteChocolateMochaIM, caramelMacchiatoIM, latteIM],
  );
  late CoffeeViewModel conPannaVM = CoffeeViewModel(
    coffee: conpannaIM,
    suggestions: [latteIM, cappucinoIM, macchiatoIM, flatWhiteIM],
  );
  late CoffeeViewModel iceAmericanoVM = CoffeeViewModel(
    coffee: iceAmericanoIM,
    suggestions: [espressoIM, frappeIM, iceLatteIM],
  );
  late CoffeeViewModel macchiatoVM = CoffeeViewModel(
    coffee: macchiatoIM,
    suggestions: [cappucinoIM, latteIM, espressoIM],
  );
  late CoffeeViewModel espressoVM = CoffeeViewModel(
    coffee: espressoIM,
    suggestions: [iceAmericanoIM, cappucinoIM, macchiatoIM, flatWhiteIM],
  );
  late CoffeeViewModel whiteChocolateMochaVM = CoffeeViewModel(
    coffee: whiteChocolateMochaIM,
    suggestions: [mochaIM, caramelMacchiatoIM, latteIM],
  );
}
