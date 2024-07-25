import 'package:flutter/material.dart';

import '../views/splash_screen.dart';
import '../views/start_screen.dart';
import '../views/sign_in_screen.dart';
import '../views/sign_up_screen.dart';
import '../views/resetting_screen.dart';
import '../views/home_screen.dart';

const String splashScreen = "The Splash Screen";
const String startScreen = "The Start Screen";
const String signInScreen = "The SignIn Screen";
const String signUpScreen = "The SignUp Screen";
const String resetScreen = "The Reset Password";
const String homeScreen = "The Home Screen";

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashScreen:
      return MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      );
    case startScreen:
      return MaterialPageRoute(
        builder: (context) => const StartScreen(),
      );
    case signInScreen:
      return MaterialPageRoute(
        builder: (context) => const SignInScreen(),
      );
    case signUpScreen:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );
    case resetScreen:
      return MaterialPageRoute(
        builder: (context) => const ResettingScreen(),
      );
    case homeScreen:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    default:
      throw ("the page you're looking for isn't defined");
  }
}
