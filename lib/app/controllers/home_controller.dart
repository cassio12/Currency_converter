import 'package:flutter/cupertino.dart';

import '../models/coin_model.dart';

class HomeController {
  late List<CoinModel> coins;
  late CoinModel toCoin;
  late CoinModel fromCoin;

  final TextEditingController toValue;
  final TextEditingController fromValue;

  HomeController(this.toValue, this.fromValue) {
    coins = CoinModel.getCoins();
    toCoin = coins[0];
    fromCoin = coins[1];
  }

  void convert(){
    String text = toValue.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double convertedValue = 0.0;

    if(fromCoin.name == 'Real'){
      convertedValue = value * toCoin.real;
    } else if(fromCoin.name == 'Dolar') {
      convertedValue = value * toCoin.dolar;
    } else if(fromCoin.name == 'Euro') {
      convertedValue = value * toCoin.euro;
    } else if(fromCoin.name == 'Ether') {
      convertedValue = value * toCoin.ether;
    } else if(fromCoin.name == 'Bitcoin') {
      convertedValue = value * toCoin.bitcoin;
    } else if(fromCoin.name == 'Peso') {
      convertedValue = value * toCoin.peso;
    }

    fromValue.text = convertedValue.toStringAsFixed(2);
  }
} 