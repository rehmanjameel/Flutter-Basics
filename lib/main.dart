import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void dices(int a) {
  print(a);
}

void main() {
  dices(12);
  //Material app is a main widget as it's a starting point
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98)),
      ),
    ),
  );
}

