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

class CoffeeViewModel {
  Coffee coffee;
  List<CoffeeViewModel> suggestions = [];
  String coffeeName;
  String coffeeInformation;
  String coffeeImagePath;
  CoffeeViewModel(
      {required this.coffee,
      required this.suggestions,
      required this.coffeeName,
      required this.coffeeInformation,
      required this.coffeeImagePath});
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
