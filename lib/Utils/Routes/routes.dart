import 'package:flutter/material.dart';
import 'package:real/Utils/Routes/route_name.dart';
import 'package:real/View/Auth%20Screens/login_screen.dart';
import 'package:real/View/Auth%20Screens/signup_screen.dart';
import 'package:real/View/intro_screen.dart';

import '../../View/home_screen.dart';
 

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesName.introScreen:
        return MaterialPageRoute(builder: (_) => const IntroScreen());

      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RoutesName.signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (_) =>  HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(child: Text("No Routes Defined")),
                ));
    }
  }
}
