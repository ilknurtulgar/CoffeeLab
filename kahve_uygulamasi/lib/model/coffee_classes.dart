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

class CoffeeWithSuggestion {
  Coffee coffee;
  String coffeeName;
  List<Coffee> suggestions = [];
  CoffeeWithSuggestion({required this.coffee, required this.suggestions,required this.coffeeName});
}
class CoffeeUtility{
  Coffee caramelMacchiato = Coffee(sut: true,buz: false,seker: false,krema: false,sutluCikolata: false,beyazCikolata: false,karamel: true, );
  Coffee whiteChocolateMocha = Coffee(sut: true,buz: false,seker: true,krema: false,sutluCikolata: false,beyazCikolata: true,karamel: false);
  Coffee mocha = Coffee(sut: true,buz: false,seker: true,krema: false,sutluCikolata: true,beyazCikolata: false,karamel: false); 
  Coffee conPanna = Coffee(sut: false,buz: false,seker: false,krema: true,sutluCikolata: false,beyazCikolata: false,karamel: false);
  Coffee frappe = Coffee(sut: true,buz: true,seker: true,krema: false,sutluCikolata: false,beyazCikolata: false,karamel: false);
  Coffee iceAmericano = Coffee(sut: false,buz: true,seker: false,krema: false,sutluCikolata: false,beyazCikolata: false,karamel: false); 
  Coffee sicakLatte = Coffee(sut: true,buz: false,seker: true,krema: false,sutluCikolata: false,beyazCikolata: false,karamel: false); //
  Coffee sogukLatte = Coffee(sut: true,buz: true,seker: false,krema: false,sutluCikolata: false,beyazCikolata: false,karamel: false);
  Coffee cappucino = Coffee(sut: true,buz: false,seker: false,krema: false,sutluCikolata: false,beyazCikolata: false,karamel: false); //
  Coffee macchiato = Coffee(sut: true,buz: false,seker: false,krema: false,sutluCikolata: false,beyazCikolata: false,karamel: false); //
  Coffee flatWhite = Coffee(sut: true,buz: false,seker: false,krema: false,sutluCikolata: false,beyazCikolata: false,karamel: false); //
  Coffee turkKahvesi = Coffee(sut: false,buz: false,seker: true,krema: false,sutluCikolata: false,beyazCikolata: false,karamel: false);
  Coffee espresso = Coffee(sut: false,buz: false,seker: false,krema: false,sutluCikolata: false,beyazCikolata: false,karamel: false); //
  late CoffeeWithSuggestion caramelMacchiatoS = CoffeeWithSuggestion(coffee: caramelMacchiato,suggestions: [frappe, mocha, whiteChocolateMocha, conPanna],coffeeName: 'cmacchiato');
  late CoffeeWithSuggestion whiteChocolateMochaS = CoffeeWithSuggestion(coffee: whiteChocolateMocha,suggestions: [mocha, caramelMacchiato, sicakLatte],coffeeName: 'white cho mocha');
  late CoffeeWithSuggestion mochaS = CoffeeWithSuggestion(coffee: mocha,suggestions: [whiteChocolateMocha, caramelMacchiato, sicakLatte],coffeeName: 'mocha');
  late CoffeeWithSuggestion conPannaS = CoffeeWithSuggestion(coffee: conPanna,suggestions: [sicakLatte, cappucino, macchiato, flatWhite],coffeeName: 'con panna');
  late CoffeeWithSuggestion frappeS = CoffeeWithSuggestion(coffee: frappe,suggestions: [sogukLatte,mocha,whiteChocolateMocha,frappe,caramelMacchiato],coffeeName: 'frappe');
  late CoffeeWithSuggestion iceAmericanoS = CoffeeWithSuggestion(coffee: iceAmericano,suggestions: [espresso, frappe, sogukLatte],coffeeName: 'ice americano');
  late CoffeeWithSuggestion sicakLatteS = CoffeeWithSuggestion(coffee: sicakLatte,suggestions: [mocha, whiteChocolateMocha, caramelMacchiato],coffeeName: 'sicak latte');
  late CoffeeWithSuggestion sogukLatteS = CoffeeWithSuggestion(coffee: sicakLatte,suggestions: [mocha, whiteChocolateMocha, caramelMacchiato],coffeeName: 'soguk latte');
  late CoffeeWithSuggestion cappucinoS = CoffeeWithSuggestion(coffee: cappucino,suggestions: [sicakLatte, macchiato, flatWhite],coffeeName: 'capp');
  late CoffeeWithSuggestion macchiatoS = CoffeeWithSuggestion(coffee: macchiato,suggestions: [cappucino, sicakLatte, espresso],coffeeName: 'macc');
  late CoffeeWithSuggestion flatWhiteS = CoffeeWithSuggestion(coffee: flatWhite,suggestions: [cappucino, macchiato, espresso],coffeeName: 'flat white');
  late CoffeeWithSuggestion turkKahvesiS = CoffeeWithSuggestion(coffee: turkKahvesi,suggestions: [iceAmericano, espresso],coffeeName: 'türk kahvesi');
  late CoffeeWithSuggestion espressoS = CoffeeWithSuggestion(coffee: espresso,suggestions: [iceAmericano, cappucino, macchiato, flatWhite],coffeeName: 'espresso');}

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
