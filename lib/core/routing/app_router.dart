import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/features/login/ui/login_screen.dart';
import 'package:appointment_app/features/signup/ui/signup_screen.dart';

import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this (arguments as calss)
    // final arguments = settings.arguments;

    switch (settings.name) {
      
    
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) =>  LoginScreen(),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) =>  SignupScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("Route not found"),
            ),
          ),
        );
    }
  }
}
