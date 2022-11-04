

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Image_Coin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Image.asset('../assets/img/logo.png', color: Colors.red,),
        )
      ),
    );
  }
}