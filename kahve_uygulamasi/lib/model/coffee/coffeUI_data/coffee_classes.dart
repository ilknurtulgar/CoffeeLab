import 'package:kahve_uygulamasi/core/base/util/image_utility.dart';

class Coffee {
  bool? sut;
  bool? buz;
  bool? seker;
  bool? krema;
  bool? sutluCikolata;
  bool? beyazCikolata;
  bool? karamel;
  Coffee({
    this.sut,
    this.buz,
    this.seker,
    this.krema,
    this.sutluCikolata,
    this.beyazCikolata,
    this.karamel,
  });
}

class CoffeeInformationModel {
  String coffeeName;
  String coffeeImagAsset;
  String coffeeInformation;
  CoffeeInformationModel(
      {required this.coffeeName,
      required this.coffeeImagAsset,
      required this.coffeeInformation});
}

class CoffeeViewModel {
  List<CoffeeInformationModel> suggestions = [];
  CoffeeInformationModel coffee;
  CoffeeViewModel({
    required this.coffee,    // frappe cappucino flat white turk kahvesi espresso
    required this.suggestions,
  });
}

class CoffeeRecipe {
  Coffee caramelMacchiato = Coffee(
    sut: true,
    buz: false,
    seker: false,
    krema: false,
    sutluCikolata: false,
    beyazCikolata: false,
    karamel: true,
  );
  Coffee whiteChocolateMocha = Coffee(
      sut: true,
      buz: false,
      seker: true,
      krema: false,
      sutluCikolata: false,
      beyazCikolata: true,
      karamel: false);
  Coffee mocha = Coffee(
      sut: true,
      buz: false,
      seker: true,
      krema: false,
      sutluCikolata: true,
      beyazCikolata: false,
      karamel: false);
  Coffee conPanna = Coffee(
      sut: false,
      buz: false,
      seker: false,
      krema: true,
      sutluCikolata: false,
      beyazCikolata: false,
      karamel: false);
  Coffee frappe = Coffee(
      sut: true,
      buz: true,
      seker: true,
      krema: false,
      sutluCikolata: false,
      beyazCikolata: false,
      karamel: false);
  Coffee iceAmericano = Coffee(
      sut: false,
      buz: true,
      seker: false,
      krema: false,
      sutluCikolata: false,
      beyazCikolata: false,
      karamel: false);
  Coffee sicakLatte = Coffee(
      sut: true,
      buz: false,
      seker: true,
      krema: false,
      sutluCikolata: false,
      beyazCikolata: false,
      karamel: false); //
  Coffee sogukLatte = Coffee(
      sut: true,
      buz: true,
      seker: false,
      krema: false,
      sutluCikolata: false,
      beyazCikolata: false,
      karamel: false);
  Coffee cappucino = Coffee(
      sut: true,
      buz: false,
      seker: false,
      krema: false,
      sutluCikolata: false,
      beyazCikolata: false,
      karamel: false); //
  Coffee macchiato = Coffee(
      sut: true,
      buz: false,
      seker: false,
      krema: false,
      sutluCikolata: false,
      beyazCikolata: false,
      karamel: false); //
  Coffee flatWhite = Coffee(
      sut: true,
      buz: false,
      seker: false,
      krema: false,
      sutluCikolata: false,
      beyazCikolata: false,
      karamel: false); //
  Coffee turkKahvesi = Coffee(
      sut: false,
      buz: false,
      seker: true,
      krema: false,
      sutluCikolata: false,
      beyazCikolata: false,
      karamel: false);
  Coffee espresso = Coffee(
      sut: false,
      buz: false,
      seker: false,
      krema: false,
      sutluCikolata: false,
      beyazCikolata: false,
      karamel: false); //
}

class CoffeeInformationModelUtility {
  CoffeeInformationModel caramelMacchiatoIM = CoffeeInformationModel(
      coffeeName: 'caramel macchiato',
      coffeeImagAsset: ImageUtility.caramelMacchiatoAsset,
      coffeeInformation: CoffeDefinitions.caramelMacchiato);
  CoffeeInformationModel sicakLatteIM = CoffeeInformationModel(
      coffeeName: 'latte',
      coffeeImagAsset: ImageUtility.latteAsset,
      coffeeInformation: CoffeDefinitions.latte);
   CoffeeInformationModel iceLatteIM = CoffeeInformationModel(
      coffeeName: 'ice latte',
      coffeeImagAsset: ImageUtility.iceLatteAsset,
      coffeeInformation: CoffeDefinitions.iceLatte);
  CoffeeInformationModel mochaIM = CoffeeInformationModel(
      coffeeName: 'mocha',
      coffeeImagAsset: ImageUtility.mochaAsset,
      coffeeInformation: CoffeDefinitions.mocha);
  CoffeeInformationModel iceAmericanoIM = CoffeeInformationModel(
      coffeeName: 'ice americano',
      coffeeImagAsset: ImageUtility.iceAmericanoAsset,
      coffeeInformation: CoffeDefinitions.iceAmericano);
  CoffeeInformationModel macchiatoIM = CoffeeInformationModel(
      coffeeName: "macchiato",
      coffeeImagAsset: ImageUtility.macchiatoAsset,
      coffeeInformation: CoffeDefinitions.macchiato);
  CoffeeInformationModel whiteChoMochaIM = CoffeeInformationModel(
      coffeeName: "white  chocolate  mocha",
      coffeeImagAsset: ImageUtility.whiteChocolateMochaAsset,
      coffeeInformation: CoffeDefinitions.whiteChocolateMocha);
  CoffeeInformationModel conpannaIM = CoffeeInformationModel(
      coffeeName: "con panna",
      coffeeImagAsset: ImageUtility.conPannaAsset,
      coffeeInformation: CoffeDefinitions.conPanna);
  //bura
  CoffeeInformationModel frappeIM = CoffeeInformationModel(
      coffeeName: "Frappe",
      coffeeImagAsset: ImageUtility.frappe,
      coffeeInformation: CoffeDefinitions.frappe);
  CoffeeInformationModel cappucinoIM = CoffeeInformationModel(
      coffeeName: "Cappucino",
      coffeeImagAsset: ImageUtility.cappucinoAsset,
      coffeeInformation: CoffeDefinitions.cappucino);
  CoffeeInformationModel flatwhiteIM = CoffeeInformationModel(
      coffeeName: "Flat white",
      coffeeImagAsset: ImageUtility.flatWhiteAsset,
      coffeeInformation: CoffeDefinitions.flatWhite);
  CoffeeInformationModel turkKahvesiIM = CoffeeInformationModel(
      coffeeName: "Türk Kahvesi",
      coffeeImagAsset: ImageUtility.cappucinoAsset,
      coffeeInformation: CoffeDefinitions.turkKahvesi);
  CoffeeInformationModel espressoIM = CoffeeInformationModel(
      coffeeName: "Espresso",
      coffeeImagAsset: ImageUtility.espressoAsset,
      coffeeInformation: CoffeDefinitions.espresso);
}

class CoffeeViewModelUtility extends CoffeeInformationModelUtility {
  late CoffeeViewModel caramelMacchiatoVM = CoffeeViewModel(
    coffee: caramelMacchiatoIM,
    suggestions: [mochaIM, sicakLatteIM, iceAmericanoIM],
  );
  late CoffeeViewModel frappeVM=CoffeeViewModel(
    coffee: frappeIM,suggestions: [iceLatteIM,mochaIM,whiteChocolateMochaIM,frappeIM,caramelMacchiatoIM]
  );
  late CoffeeViewModel cappucinoVM=CoffeeViewModel(
    coffee: frappeIM,suggestions: [sicakLatteIM, macchiatoIM, flatwhiteIM],
  );
  late CoffeeViewModel frappeVM=CoffeeViewModel(
    coffee: frappeIM,suggestions: [iceLatteIM,mochaIM,whiteChocolateMochaIM,frappeIM,caramelMacchiatoIM]
  );
  late CoffeeViewModel frappeVM=CoffeeViewModel(
    coffee: frappeIM,suggestions: [iceLatteIM,mochaIM,whiteChocolateMochaIM,frappeIM,caramelMacchiatoIM]
  );
  late CoffeeViewModel frappeVM=CoffeeViewModel(
    coffee: frappeIM,suggestions: [iceLatteIM,mochaIM,whiteChocolateMochaIM,frappeIM,caramelMacchiatoIM]
  );
}

/*
class CoffeeUtility extends CoffeeRecipe {
  late CoffeeViewModel caramelMacchiatoS = CoffeeViewModel(
    coffee: caramelMacchiato,
    suggestions: [frappeS, mochaS, whiteChocolateMochaS, conPannaS],
    coffeeName: 'cmacchiato',
    coffeeInformation: CoffeDefinitions.caramelMacchiato,
    coffeeImagePath: ImageUtility.caramelMacchiatoAsset,
  );
  late CoffeeViewModel whiteChocolateMochaS = CoffeeViewModel(
    coffee: whiteChocolateMocha,
    suggestions: [mochaS, caramelMacchiatoS, sicakLatteS],
    coffeeName: 'white cho mocha',
    coffeeInformation: CoffeDefinitions.whiteChocolateMocha,
    coffeeImagePath: ImageUtility.whiteChocolateMochaAsset,
  );
  late CoffeeViewModel mochaS = CoffeeViewModel(
    coffee: mocha,
    suggestions: [whiteChocolateMochaS, caramelMacchiatoS, sicakLatteS],
    coffeeName: 'mocha',
    coffeeInformation: CoffeDefinitions.mocha,
    coffeeImagePath: ImageUtility.mochaAsset,
  );
  late CoffeeViewModel conPannaS = CoffeeViewModel(
    coffee: conPanna,
    suggestions: [sicakLatteS, cappucinoS, macchiatoS, flatWhiteS],
    coffeeName: 'con panna',
    coffeeInformation: CoffeDefinitions.conPanna,
    coffeeImagePath: ImageUtility.conPannaAsset,
  );
  late CoffeeViewModel frappeS = CoffeeViewModel(
    coffee: frappe,
    suggestions: [
      sogukLatteS,
      mochaS,
      whiteChocolateMochaS,
      frappeS,
      caramelMacchiatoS
    ],
    coffeeName: 'frappe',
    coffeeInformation: CoffeDefinitions.frappe,
    coffeeImagePath: CoffeDefinitions.frappe,
  );
  late CoffeeViewModel iceAmericanoS = CoffeeViewModel(
    coffee: iceAmericano,
    suggestions: [espressoS, frappeS, sogukLatteS],
    coffeeName: 'ice americano',
    coffeeInformation: CoffeDefinitions.iceAmericano,
    coffeeImagePath: ImageUtility.iceAmericanoAsset,
  );
  late CoffeeViewModel sicakLatteS = CoffeeViewModel(
    coffee: sicakLatte,
    suggestions: [mochaS, whiteChocolateMochaS, caramelMacchiatoS],
    coffeeName: 'sicak latte',
    coffeeInformation: CoffeDefinitions.latte,
    coffeeImagePath: ImageUtility.latteAsset,
  );
  late CoffeeViewModel sogukLatteS = CoffeeViewModel(
    coffee: sicakLatte,
    suggestions: [mochaS, whiteChocolateMochaS, caramelMacchiatoS],
    coffeeName: 'soguk latte',
    coffeeInformation: CoffeDefinitions.iceLatte,
    coffeeImagePath: CoffeDefinitions.iceLatte,
  );
  late CoffeeViewModel cappucinoS = CoffeeViewModel(
    coffee: cappucino,
    suggestions: [sicakLatteS, macchiatoS, flatWhiteS],
    coffeeName: 'capp',
    coffeeInformation: CoffeDefinitions.cappucino,
    coffeeImagePath: ImageUtility.cappucinoAsset,
  );
  late CoffeeViewModel macchiatoS = CoffeeViewModel(
    coffee: macchiato,
    suggestions: [cappucinoS, sicakLatteS, espressoS],
    coffeeName: 'macc',
    coffeeInformation: CoffeDefinitions.macchiato,
    coffeeImagePath: ImageUtility.macchiatoAsset,
  );
  late CoffeeViewModel flatWhiteS = CoffeeViewModel(
    coffee: flatWhite,
    suggestions: [cappucinoS, macchiatoS, espressoS],
    coffeeName: 'flat white',
    coffeeInformation: CoffeDefinitions.flatWhite,
    coffeeImagePath: ImageUtility.flatWhiteAsset,
  );
  late CoffeeViewModel turkKahvesiS = CoffeeViewModel(
      coffee: turkKahvesi,
      suggestions: [iceAmericanoS, espressoS],
      coffeeName: 'türk kahvesi',
      coffeeInformation: CoffeDefinitions.turkKahvesi,
      coffeeImagePath: ImageUtility.espressoAsset);
  late CoffeeViewModel espressoS = CoffeeViewModel(
      coffee: espresso,
      suggestions: [iceAmericanoS, cappucinoS, macchiatoS, flatWhiteS],
      coffeeName: 'espresso',
      coffeeInformation: CoffeDefinitions.espresso,
      coffeeImagePath: ImageUtility.espressoAsset);
}
*/

class CoffeDefinitions {
  static String conPanna =
      " Tek chot espresso üzerine çırpılmış krema ile hazırlanan kahve çeşidi.";
  static String latte =
      "Tek shot espresso ve buharla ısıtılmış kıvamlı süt ile hazirlanan kahve çeşidi.";
  static String iceLatte =
      "Tek shot espresso bol miktarda süt ve buz ile hazirlanan kahve çeşidi.";
  static String mocha =
      'Tek shot espresso ,erimiş çikolata ve buharda ısıtılmış köpüklü süt ile hazırlanan kahve çeşidi.';
  static String cappucino =
      'Tek shot espresso kıvamlı ve bol köpüklü süt ile hazırlanan kahve çeşidi.';
  static String flatWhite =
      'Tek veya çift shot espresso ve kıvamlı süt ile hazırlanan kahve çeşidi.';
  static String caramelMacchiato =
      'Tek veya çift shot espresso, kremamsı süt ve karamel aromasıyla hazırlanan kahve çeşidi.';
  static String whiteChocolateMocha =
      'Tek shot espresso ,erimiş beyaz çikolata ve buharda ısıtılmış köpüklü süt ile hazırlanan kahve çeşidi.';
  static String frappe =
      'Espresso ,süt ,krema ve buzla hazırlanan soüuk kahve çeşidi. ';
  static String macchiato =
      'Tek veya iki shot espresso shot az miktarda buharda ısıtılmış süt ve süt köpüğü ile hazırlanan kahve çeşidi.';
  static String espresso =
      'Kavrulmuş ve ince çekilmiş kahve tozunun içinden 90 derece sıcaklıkta suyun çok kısa bir sürede yüksek basınçla geçirilmesi ile hazırlanan kahve çeşidi.';
  static String iceAmericano =
      'Espresso soğuk su ve buz ile hazırlanan kahve çeşidi.';
  static String turkKahvesi =
      "Kendine has kahve aroması olan Türk kahvesi özel pişirme yöntemi ile köpük elde ederek hazırlanan kahve çeşidi.";
}
