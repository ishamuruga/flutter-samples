import 'package:flutter/material.dart';

class MyHomePageContent extends StatelessWidget {
  const MyHomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 250),
        const SizedBox(height: 10),
        const Text('Learn Flutter the fun way!'),
        const SizedBox(height: 25),
        TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.deepPurple,
              backgroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: const Text('Start Quiz'))
      ],
    );
  }
}
