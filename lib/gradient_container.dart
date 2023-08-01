import 'dart:ui';

import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topRight;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {

  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
  : color1 = Colors.deepPurple,
  color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:  [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }

  // const GradientContainer({super.key, required this.colors});
  //
  // final List<Color> colors;
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //         colors:  colors,
  //         begin: startAlignment,
  //         end: endAlignment,
  //       ),
  //     ),
  //     child: const Center(
  //       child: StyledText("Hello World!"),
  //     ),
  //   );
  // }
}

// [ Color.fromARGB(255, 26, 2, 80),
// Color.fromARGB(255, 45, 7, 98),
// Color.fromARGB(255, 35, 74, 90)
// ]