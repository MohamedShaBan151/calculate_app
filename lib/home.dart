import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});
  static const routename = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        title: Text("Bottoms Screen"),
        centerTitle: true,
      ),
      body: Container(child: Text("hellooo")),
    );
  }
}
