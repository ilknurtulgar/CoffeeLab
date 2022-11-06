import '../coffee_view_model/coffee_models.dart';
import 'coffee_uidata_information.dart';

class CoffeeViewModelUtility extends CoffeeInformationModelUtility {
  late CoffeeViewModel caramelMacchiatoVM = CoffeeViewModel(
    coffee: caramelMacchiatoIM,
    suggestions: [conpannaIM, whiteChocolateMochaIM, frappeIM, mochaIM],
  );
  late CoffeeViewModel frappeVM =
      CoffeeViewModel(coffee: frappeIM, suggestions: [
    caramelMacchiatoIM,
    mochaIM,
    whiteChocolateMochaIM,
    iceAmericanoIM,
  ]);
  late CoffeeViewModel cappucinoVM = CoffeeViewModel(
    coffee: cappucinoIM,
    suggestions: [latteIM, macchiatoIM, flatWhiteIM],
  );
  late CoffeeViewModel flatWhiteVM = CoffeeViewModel(
    coffee: flatWhiteIM,
    suggestions: [cappucinoIM, macchiatoIM, latteIM],
  );
  late CoffeeViewModel turkKahvesiVM = CoffeeViewModel(
    coffee: turkKahvesiIM,
    suggestions: [espressoIM, iceAmericanoIM],
  );
  late CoffeeViewModel iceLatteVM = CoffeeViewModel(
    coffee: iceLatteIM,
    suggestions: [frappeIM, iceAmericanoIM, latteIM],
  );
  late CoffeeViewModel latteVM = CoffeeViewModel(
    coffee: latteIM,
    suggestions: [macchiatoIM, flatWhiteIM, cappucinoIM],
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
    suggestions: [espressoIM, turkKahvesiIM, iceLatteIM],
  );
  late CoffeeViewModel macchiatoVM = CoffeeViewModel(
    coffee: macchiatoIM,
    suggestions: [cappucinoIM, latteIM, espressoIM],
  );
  late CoffeeViewModel espressoVM = CoffeeViewModel(
    coffee: espressoIM,
    suggestions: [
      turkKahvesiIM,
      iceAmericanoIM,
    ],
  );
  late CoffeeViewModel whiteChocolateMochaVM = CoffeeViewModel(
    coffee: whiteChocolateMochaIM,
    suggestions: [mochaIM, caramelMacchiatoIM, latteIM],
  );
}
