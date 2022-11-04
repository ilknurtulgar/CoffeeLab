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
  List<Coffee> oneriler = [];
  CoffeeWithSuggestion({required this.coffee, required this.oneriler,required this.coffeeName});
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
  late CoffeeWithSuggestion caramelMacchiatoS = CoffeeWithSuggestion(coffee: caramelMacchiato,oneriler: [frappe, mocha, whiteChocolateMocha, conPanna],coffeeName: 'cmacchiato');
  late CoffeeWithSuggestion whiteChocolateMochaS = CoffeeWithSuggestion(coffee: whiteChocolateMocha,oneriler: [mocha, caramelMacchiato, sicakLatte],coffeeName: 'white cho mocha');
  late CoffeeWithSuggestion mochaS = CoffeeWithSuggestion(coffee: mocha,oneriler: [whiteChocolateMocha, caramelMacchiato, sicakLatte],coffeeName: 'mocha');
  late CoffeeWithSuggestion conPannaS = CoffeeWithSuggestion(coffee: conPanna,oneriler: [sicakLatte, cappucino, macchiato, flatWhite],coffeeName: 'con panna');
  late CoffeeWithSuggestion frappeS = CoffeeWithSuggestion(coffee: frappe,oneriler: [sogukLatte,mocha,whiteChocolateMocha,frappe,caramelMacchiato],coffeeName: 'frappe');
  late CoffeeWithSuggestion iceAmericanoS = CoffeeWithSuggestion(coffee: iceAmericano,oneriler: [espresso, frappe, sogukLatte],coffeeName: 'ice americano');
  late CoffeeWithSuggestion sicakLatteS = CoffeeWithSuggestion(coffee: sicakLatte,oneriler: [mocha, whiteChocolateMocha, caramelMacchiato],coffeeName: 'sicak latte');
  late CoffeeWithSuggestion sogukLatteS = CoffeeWithSuggestion(coffee: sicakLatte,oneriler: [mocha, whiteChocolateMocha, caramelMacchiato],coffeeName: 'soguk latte');
  late CoffeeWithSuggestion cappucinoS = CoffeeWithSuggestion(coffee: cappucino,oneriler: [sicakLatte, macchiato, flatWhite],coffeeName: 'capp');
  late CoffeeWithSuggestion macchiatoS = CoffeeWithSuggestion(coffee: macchiato,oneriler: [cappucino, sicakLatte, espresso],coffeeName: 'macc');
  late CoffeeWithSuggestion flatWhiteS = CoffeeWithSuggestion(coffee: flatWhite,oneriler: [cappucino, macchiato, espresso],coffeeName: 'flat white');
  late CoffeeWithSuggestion turkKahvesiS = CoffeeWithSuggestion(coffee: turkKahvesi,oneriler: [iceAmericano, espresso],coffeeName: 'türk kahvesi');
  late CoffeeWithSuggestion espressoS = CoffeeWithSuggestion(coffee: espresso,oneriler: [iceAmericano, cappucino, macchiato, flatWhite],coffeeName: 'espresso');
}
