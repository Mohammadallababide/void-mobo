import 'package:car_track/ui/login_design_9/signup_screen_9.dart';
import 'package:flutter/material.dart';

import '../ui/login_design_9/login_screen_9.dart';

class GenerateScreen {
  static Route<dynamic> onGenerate(RouteSettings value) {
    String? name = value.name;
    final Map<dynamic, dynamic>? arg = value.arguments as Map?;
    switch (name) {
      case NameScreen.login9:
        {
          return MaterialPageRoute(
              builder: (context) => LoginScreen9(themeBloc: arg!['themeBloc']));
        }
      case NameScreen.signup9:
        {
          return MaterialPageRoute(builder: (context) => SignUpScreen9());
        }
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('ERROR'),
          ),
        );
      },
    );
  }
}

class NameScreen {
  static const String login9 = '/login9';
  static const String signup9 = '/signup9';
}
