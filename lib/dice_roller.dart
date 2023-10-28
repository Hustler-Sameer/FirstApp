import 'dart:math';

// we are importing this to generate random numbers to show up in between 1 to 6
// to display dice accordingly

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});
  // create State does not return a value but it returns a state hence State createState
  // but this state is also generic hence we write it as <StatefulWidget>

  @override
  State<DiceRoller> createState() {
    // TODO: implement createState

    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    // ignore: unnecessary_set_literal
    var diceRoll = Random().nextInt(6) + 1;
    // this will generate random number between 1 to 6;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
      // this $ injects the number generated here for the path to get completed.
    });
  }

  // this way is generating a bit more memory setState
  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        activeDiceImage,
        width: 200,
      ),
      const SizedBox(height: 20),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.only(top: 20),
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text("Roll Dice!"))
    ]);
  }
}
