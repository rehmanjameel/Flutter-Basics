import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/Alea_$currentDiceRoll.png',
          width: 200,
        ),
        // Image.asset('assets/images/Alea_2.png', width: 200,),
        // Image.asset('assets/images/Alea_3.png', width: 200,),
        // Image.asset('assets/images/Alea_4.png', width: 200,),
        // Image.asset('assets/images/Alea_5.png', width: 200,),
        // Image.asset('assets/images/Alea_6.png', width: 200,)
        const SizedBox(
          height: 0,
        ),
        TextButton(onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20,),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 20,
                )),
            child: Text('Roll Dice'))
      ],
    );
  }
}