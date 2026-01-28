import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/core/di/dependency_injection.dart';
import 'package:yalla_kora/features/home/ui/home_screen.dart';
import 'package:yalla_kora/features/home/ui/main_screen.dart';
import 'package:yalla_kora/features/login/logic/login_cubit.dart';
import 'routes.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/signup/ui/signup_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this (arguments as calss)
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          ),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => SignupScreen());
      case Routes.mainScreen:
        return MaterialPageRoute(builder: (_) => MainScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Route not found"))),
        );
    }
  }
}
