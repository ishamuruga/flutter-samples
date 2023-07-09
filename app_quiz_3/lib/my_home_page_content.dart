import 'package:flutter/material.dart';

class MyHomePageContent extends StatefulWidget {
  const MyHomePageContent({super.key});

  @override
  State<MyHomePageContent> createState() {
    return _MyHomePageContentState();
  }
}

class _MyHomePageContentState extends State<MyHomePageContent> {
  void onClickHandler() {
    print('Hi');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png',
            width: 200, color: Color.fromARGB(150, 255, 255, 255)),
        const SizedBox(height: 25),
        const Text('Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              color: Colors.white,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              decorationStyle: TextDecorationStyle.wavy,
            )),
        const SizedBox(height: 25),
        OutlinedButton.icon(
            onPressed: onClickHandler,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 27, 41, 240),
              textStyle: const TextStyle(fontSize: 20),
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'))
      ],
    );
  }
}
