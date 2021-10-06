// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter_application_1/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/app/models/components/currency_box.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 30, top: 80, bottom: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/coin.jpg',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 50),
              CurrencyBox(
                selectedItem: homeController.toCurrency,
                controller: toText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model;
                  });
                },
              ),
              SizedBox(height: 10),
              CurrencyBox(
                selectedItem: homeController.fromCurrency,
                controller: fromText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.fromCurrency = model;
                  });
                },
              ),
              SizedBox(height: 50),
              RaisedButton(
                color: Colors.amber,
                textColor: Colors.white,
                onPressed: () {
                  homeController.convert();
                },
                child: Text('CONVERTER'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
