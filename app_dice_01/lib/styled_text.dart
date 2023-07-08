import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String outputText;
  final double size;

  //const StyledText(String text, {super.key}) : outputText = text;
  const StyledText(this.outputText, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(outputText,
        style: TextStyle(
          color: Colors.white,
          fontSize: size,
        ));
  }
}
