import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // int days = 30;
    // String name = "Meet";
    // double pie = 3.14;
    // bool isMale = true;
    // num temp = 30.5;

    // var day = "Saterday";

    // const pi = 3.14;

    return MaterialApp(
      home: HomePage(),
    );
  }
}
