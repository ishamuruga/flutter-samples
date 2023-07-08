import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  // DiceRoller(key) : super(key: key);

  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String activeDiceImage = "assets/images/dice-1.png";
  final randomizer = Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 100,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: EdgeInsets.all(25),
                foregroundColor: Colors.white,
                backgroundColor: Colors.amber,
                textStyle: const TextStyle(fontSize: 20)),
            child: const Text('Roll Dice'))
      ],
    );
  }

  void rollDice() {
    var random = randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$random.png';
    });

    print('getting clicked-' + activeDiceImage);
  }
}
