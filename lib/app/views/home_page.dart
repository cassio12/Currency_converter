

import 'dart:html';

import 'package:conversor_moedas/app/components/coin_box.dart';
import 'package:conversor_moedas/app/components/coin_img.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

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
              Coin_box(),
              SizedBox(height: 20.0),
              Coin_box(),
              SizedBox(height:60.0),
              SizedBox(
                width: 150.0,
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green
                  ),
                  onPressed: () {}, 
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