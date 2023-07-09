import 'package:flutter/material.dart';

import 'my_home_page_content.dart';

class MyHomePageWidget extends StatelessWidget {
  const MyHomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // backgroundColor: Colors.lightBlueAccent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: [Colors.purple, Colors.deepPurple]),
        ),
        child: const Center(
          child: MyHomePageContent(),
        ),
      ),
    ));
  }
}
