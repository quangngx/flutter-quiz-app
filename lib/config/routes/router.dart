import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/config/routes/routes.dart';
import 'package:flutter_quiz_app/modules/home/home_screen.dart';

class Router {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        {
          return MaterialPageRoute(builder: (_) => const HomeScreen());
        }
      default:
        {
          return MaterialPageRoute(
              builder: (_) => Scaffold(
                    body: Center(
                        child: Text('No route defined for ${settings.name}')),
                  ));
        }
    }
  }
}
