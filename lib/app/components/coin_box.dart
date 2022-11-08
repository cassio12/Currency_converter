import 'package:conversor_moedas/app/models/coin_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Coin_box extends StatelessWidget {
  final List<CoinModel> items;
  final CoinModel itemSelected;
  final TextEditingController controller;
  final onChanged;
  
  const Coin_box({super.key, required this.items, required this.controller, required this.onChanged, required this.itemSelected});

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 63.0,
            child: DropdownButton<CoinModel>(
              isExpanded: true,
              iconEnabledColor: Colors.green,
              underline: Container(
                height: 1,
                color: Colors.green,
              ),
              items: items.map((i) => DropdownMenuItem(value: i, child: Text(i.name))).toList(), 
              onChanged: onChanged,
              value: itemSelected,
            ),
          ),
        ),
        SizedBox(width: 30.0),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
            )
          ),
        ),
      ],
    );
  }
}