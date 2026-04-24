import 'package:bottoms/button.dart';
import 'package:bottoms/core/appColors.dart';
import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});
  static const routename = "/calc";

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: appColors.black,
                  child: Text(
                    (value),
                    style: TextStyle(fontSize: 24, color: appColors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: appColors.black,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    child: button(
                                      data: 'Ac',
                                      color2: appColors.white,
                                      color: appColors.gray,
                                      onTap: onTaped,
                                    ),
                                  ),
                                  Expanded(
                                    child: button(
                                      data: 'X',
                                      color2: appColors.white,
                                      color: appColors.gray,
                                      onTap: onTaped,
                                    ),
                                  ),
                                  Expanded(
                                    child: button(
                                      data: '/',
                                      color2: appColors.white,
                                      color: appColors.blue,
                                      onTap: onTaped,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    child: button(
                                      data: '7',
                                      color: appColors.blackGray,
                                      color2: appColors.blue,
                                      onTap: onTaped,
                                    ),
                                  ),
                                  Expanded(
                                    child: button(
                                      data: '8',
                                      color: appColors.blackGray,
                                      color2: appColors.blue,
                                      onTap: onTaped,
                                    ),
                                  ),
                                  Expanded(
                                    child: button(
                                      data: '9',
                                      color: appColors.blackGray,
                                      color2: appColors.blue,
                                      onTap: onTaped,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    child: button(
                                      data: '4',
                                      color: appColors.blackGray,
                                      color2: appColors.blue,
                                      onTap: onTaped,
                                    ),
                                  ),
                                  Expanded(
                                    child: button(
                                      data: '5',
                                      color: appColors.blackGray,
                                      color2: appColors.blue,
                                      onTap: onTaped,
                                    ),
                                  ),
                                  Expanded(
                                    child: button(
                                      data: '6',
                                      color: appColors.blackGray,
                                      color2: appColors.blue,
                                      onTap: onTaped,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    child: button(
                                      data: '1',
                                      color: appColors.blackGray,
                                      color2: appColors.blue,
                                      onTap: onTaped,
                                    ),
                                  ),
                                  Expanded(
                                    child: button(
                                      data: '2',
                                      color: appColors.blackGray,
                                      color2: appColors.blue,
                                      onTap: onTaped,
                                    ),
                                  ),
                                  Expanded(
                                    child: button(
                                      data: '3',
                                      color: appColors.blackGray,
                                      color2: appColors.blue,
                                      onTap: onTaped,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: button(
                                      data: '0',
                                      color: appColors.blackGray,
                                      color2: appColors.blue,
                                      onTap: onTaped,
                                    ),
                                  ),
                                  Expanded(
                                    child: button(
                                      data: '.',
                                      color: appColors.blackGray,
                                      color2: appColors.blue,
                                      onTap: onTaped,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              flex: 2,
                              child: button(
                                data: '*',
                                color2: appColors.white,
                                color: appColors.blue,
                                onTap: onTaped,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: button(
                                data: '-',
                                color2: appColors.white,
                                color: appColors.blue,
                                onTap: onTaped,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: button(
                                data: '+',
                                color2: appColors.white,
                                color: appColors.blue,
                                onTap: onTaped,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: button(
                                data: '=',
                                color2: appColors.white,
                                color: appColors.lightblue,
                                onTap: onTaped,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 void onTaped(String data) {
  setState(() {
    if (data == "Ac") {
      value = "";
      return;
    }

    if (data == "=") {
      calculateResult();
      return;
    }

    // ✅ زرار حذف آخر عنصر
    if (data == "X" ) {
      if (value.isNotEmpty) {
        value = value.substring(0, value.length - 1);
      }
      return;
    }

    // منع تكرار العمليات
    if (isOperator(data) &&
        value.isNotEmpty &&
        isOperator(value[value.length - 1])) {
      return;
    }

    value += data;
  });
}
bool isOperator(String s) {
  return s == "+" || s == "-" || s == "*" || s == "/";
}
void calculateResult() {
  try {
    String finalExp = value.replaceAll('X', '*');

    List<String> tokens = [];
    String number = "";

    for (int i = 0; i < finalExp.length; i++) {
      String ch = finalExp[i];

      if (isOperator(ch)) {
        tokens.add(number);
        tokens.add(ch);
        number = "";
      } else {
        number += ch;
      }
    }
    tokens.add(number);

    double result = double.parse(tokens[0]);

    for (int i = 1; i < tokens.length; i += 2) {
      String op = tokens[i];
      double next = double.parse(tokens[i + 1]);

      if (op == "+") result += next;
      if (op == "-") result -= next;
      if (op == "*") result *= next;
      if (op == "/") result /= next;
    }

    value = result.toString();
  } catch (e) {
    value = "Error";
  }
}
}
