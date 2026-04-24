import 'package:bottoms/calculator.dart';
import 'package:bottoms/home.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        home.routename: (context) => home(),
        calculator.routename: (context) => calculator(),
      },
      initialRoute:calculator.routename,
      
    );
  }
}
