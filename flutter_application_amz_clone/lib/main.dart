import 'package:flutter/material.dart';
import 'package:flutter_application_amz_clone/constants/global_variabes.dart';
import 'package:flutter_application_amz_clone/features/auth/screens/auth_screen.dart';
import 'package:flutter_application_amz_clone/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon Clone App',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          appBarTheme: const AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
          colorScheme:
              ColorScheme.light(primary: GlobalVariables.secondaryColor)),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: AuthScreen(),
    );
  }
}



// Scaffold(
//         appBar: AppBar(
//           title: const Text('Amazon Home Page'),
//           centerTitle: true,
//         ),
//         body: Column(
//           children: [
//             const Center(
//               child: Text('My Amazon Demo'),
//             ),
//             Builder(builder: (context) {
//               return ElevatedButton(
//                 onPressed: () {
//                   Navigator.pushNamed(
//                       context, GlobalVariables.routeName_authScreen);
//                 },
//                 child: const Text("Press Me"),
//               );
//             }),
//           ],
//         ),
//       )