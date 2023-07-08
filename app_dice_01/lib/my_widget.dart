import 'package:app_dice_01/styled_text.dart';
import 'package:flutter/material.dart';

import 'package:app_dice_01/dice_roller.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.topRight;

class MyWidget extends StatelessWidget {
  // const MyWidget({super.key});

  final Color colr1;
  final Color colr2;

  String activeDiceImage = 'assets/images/dice-1.png';

  //named arguments are optional by default

  MyWidget(Color colr1, Color colr2, {key})
      : colr1 = colr1,
        colr2 = colr2,
        super(key: key);

  MyWidget.purple({key})
      : colr1 = Colors.purple,
        colr2 = Colors.green,
        super(key: key);
  //MyWidget({super.key, required this.colors});

  void rollDice() {
    activeDiceImage = 'assets/images/dice-2.png';
    print('>>>>$activeDiceImage');
  }

  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 170, 225, 107),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: startAlignment,
                  end: endAlignment,
                  colors: [colr1, colr2]),
            ),
            child: Center(
              child: DiceRoller(),
            ),
          )),
    );
  }
}







// class MyWidget extends StatelessWidget {
//   // const MyWidget({super.key});

//   final List<Color> gradColors;

//   //named arguments are optional by default

//   const MyWidget(this.gradColors, {key}) : super(key: key);
//   //MyWidget({super.key, required this.colors});

//   @override
//   Widget build(BuildContext context) {
//     //throw UnimplementedError();
//     return MaterialApp(
//       home: Scaffold(
//           backgroundColor: const Color.fromARGB(255, 170, 225, 107),
//           body: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                   begin: startAlignment, end: endAlignment, colors: gradColors),
//             ),
//             child: const Center(child: StyledText('Hello World', 50)),
//           )),
//     );
//   }
// }
