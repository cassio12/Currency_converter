import 'dart:html';

import 'package:conversor_moedas/app/components/coin_box.dart';
import 'package:conversor_moedas/app/components/coin_img.dart';
import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController toValue = TextEditingController();
  late HomeController homeController;
  final TextEditingController fromValue = TextEditingController();  

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toValue, fromValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50.0, 70.0, 50.0, 20.0),
          child: Column(
            children: [
              Image_Coin(),
              SizedBox(height: 40.0),
              Coin_box(
                itemSelected: homeController.toCoin,
                controller: toValue,
                items: homeController.coins, 
                onChanged: (model) {
                  print(model.name);
                  setState(() {
                    homeController.toCoin = model;
                  });
                }
              ),
              SizedBox(height: 20.0),
              Coin_box(
                itemSelected: homeController.fromCoin,
                controller: fromValue,
                items: homeController.coins, 
                onChanged: (model) {
                  setState(() {
                    homeController.fromCoin = model;
                  });
                }
              ),
              SizedBox(height:60.0),
              SizedBox(
                width: 150.0,
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green
                  ),
                  onPressed: () {
                    homeController.convert();
                  }, 
                  child: Text('CONVERTER')
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}