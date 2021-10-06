import 'package:flutter_application_1/app/controllers/home_controller.dart';
import 'package:flutter_application_1/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  final homeController = HomeController(toText: toText, fromText: fromText);

  test('converter de real para dolar', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });

  test('converter dolar em real', () {
    toText.text = '1.0';
    homeController.toCurrency = CurrencyModel(
        name: 'Dolar', real: 5.52, dolar: 1.0, euro: 0.87, bitcoin: 0.000018);
    homeController.fromCurrency = CurrencyModel(
        name: 'Real', real: 1.0, dolar: 0.18, euro: 0.16, bitcoin: 0.0000039);

    homeController.convert();
    expect(fromText.text, '5.65');
  });
}
