import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app/views/home_page.dart';

main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}