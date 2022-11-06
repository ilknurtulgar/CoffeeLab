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
    required this.coffee,
    required this.suggestions,
  });
}
