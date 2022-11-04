class Coffee {
  late List<bool> ingredients = [
    sut,
    buz,
    seker,
    krema,
    sutluCikolata,
    beyazCikolata,
    karamel
  ];
  bool sut;
  bool buz;
  bool seker;
  bool krema;
  bool sutluCikolata;
  bool beyazCikolata;
  bool karamel;
  Coffee({
    required this.sut,
    required this.buz,
    required this.seker,
    required this.krema,
    required this.sutluCikolata,
    required this.beyazCikolata,
    required this.karamel,
  });
}

class CoffeeWithSuggestion {
  Coffee kahve;
  List<Coffee> oneriler = [];
  CoffeeWithSuggestion({required this.kahve, required this.oneriler});
}

class CoffeeUtility {
  Coffee caramelMacchiato = Coffee(
      sut: true,
      buz: false,
      seker: false,
      krema: false,
      sutluCikolata: false,
      beyazCikolata: false,
      karamel: true);
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
  Coffee latte = Coffee(
      sut: true,
      buz: false,
      seker: true,
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
      karamel: false);
  Coffee macchiato = Coffee(
      sut: true,
      buz: false,
      seker: false,
      krema: false,
      sutluCikolata: false,
      beyazCikolata: false,
      karamel: false);
  Coffee flatWhite = Coffee(
      sut: true,
      buz: false,
      seker: false,
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
      karamel: false);
  late CoffeeWithSuggestion caramelMacchinatoS = CoffeeWithSuggestion(
      kahve: caramelMacchiato,
      oneriler: [frappe, mocha, whiteChocolateMocha, conPanna]);
  late CoffeeWithSuggestion whiteChocolateMochaS = CoffeeWithSuggestion(
      kahve: whiteChocolateMocha, oneriler: [mocha, caramelMacchiato, latte]);
  late CoffeeWithSuggestion mochaS = CoffeeWithSuggestion(
      kahve: mocha, oneriler: [whiteChocolateMocha, caramelMacchiato, latte]);
  late CoffeeWithSuggestion conPannaS = CoffeeWithSuggestion(
      kahve: conPanna, oneriler: [latte, cappucino, macchiato, flatWhite]);
  late CoffeeWithSuggestion frappeS = CoffeeWithSuggestion(
      kahve: frappe,
      oneriler: [mocha, whiteChocolateMocha, frappe, caramelMacchiato]);
  late CoffeeWithSuggestion iceAmericanoS =
      CoffeeWithSuggestion(kahve: iceAmericano, oneriler: [espresso, frappe]);
  late CoffeeWithSuggestion latteS = CoffeeWithSuggestion(
      kahve: latte, oneriler: [mocha, whiteChocolateMocha, caramelMacchiato]);
  late CoffeeWithSuggestion cappucinoS = CoffeeWithSuggestion(
      kahve: cappucino, oneriler: [latte, macchiato, flatWhite]);
  late CoffeeWithSuggestion macchiatoS = CoffeeWithSuggestion(
      kahve: macchiato, oneriler: [cappucino, latte, espresso]);
  late CoffeeWithSuggestion flatWhiteS = CoffeeWithSuggestion(
      kahve: flatWhite, oneriler: [cappucino, macchiato, espresso]);
  late CoffeeWithSuggestion espressoS = CoffeeWithSuggestion(
      kahve: espresso,
      oneriler: [iceAmericano, cappucino, macchiato, flatWhite]);
}

class CoffeDefinitions {
  static String americano =
      " Americano sıcak su ekleyerek tek shot espressoya kaynatmak yöntemi ile hazırlanan kahve çeşidi.";
  static String latte =
      "Tek shot espresso ve buharla ısıtılmış kıvamlı süt ile hazirlanan kahve çeşidi.";
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
}
