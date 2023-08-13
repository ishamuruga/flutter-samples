import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  //final void Function() pressed;
  final VoidCallback pressed;

  const CustomButton({super.key, required this.text, required this.pressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
      ),
    );
  }
}
