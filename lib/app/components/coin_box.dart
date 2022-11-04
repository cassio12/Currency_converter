import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Coin_box extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 63.0,
            child: DropdownButton(
              isExpanded: true,
              iconEnabledColor: Colors.green,
              underline: Container(
                height: 1,
                color: Colors.green,
              ),
              items: [
                DropdownMenuItem(child: Text('Real')),
              ], 
              onChanged: (value) {}
            ),
          ),
        ),
        SizedBox(width: 30.0),
        Expanded(
          flex: 2,
          child: TextField(
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