import 'package:flutter/material.dart';
import 'package:flutter_application_amz_clone/constants/global_variabes.dart';
import 'package:flutter_application_amz_clone/features/auth/screens/auth_screen.dart';
import 'package:flutter_application_amz_clone/features/home/screens/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case (GlobalVariables.routeName_authScreen):
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    case (GlobalVariables.routeName_homeScreen):
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Screen Does not exits"),
          ),
        ),
      );
  }
}
