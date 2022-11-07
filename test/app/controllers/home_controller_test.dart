import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:conversor_moedas/app/models/coin_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TextEditingController toValue = TextEditingController();
  final TextEditingController fromValue = TextEditingController();
  final homeController = HomeController(toValue, fromValue);

   test('Deve converte de Real para dolar com virgula.', (){
    toValue.text = '1,0';
    homeController.convert();
    expect(fromValue.text, '0.20');
  });

  test('Deve converte de Real para dolar.', (){
    toValue.text = '1.0';
    homeController.convert();
    expect(fromValue.text, '0.20');
  });

  test('Deve converte de Dolar para Real.', (){
    toValue.text = '1.0';
    homeController.toCoin = CoinModel('Dolar', 5.04, 1.0, 1.01, 0.000088, 0.00062, 158.29);
    homeController.fromCoin = CoinModel('Real', 1.0, 0.20, 0.20, 0.000016, 0.00012, 31.36);
    homeController.convert();
    expect(fromValue.text, '5.04');
  });
}