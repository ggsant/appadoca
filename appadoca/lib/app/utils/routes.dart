import 'package:appadoca/app/UI/screens/home.dart';
import 'package:appadoca/app/UI/screens/onboarding.dart';
import 'package:flutter/material.dart';

const String HomeScreenRoute = '/';
const String OnboardingScreenRoute = '/onboardingRoute';

RouteFactory routes() {
  return (settings) {
    final Map<String, dynamic> arguments = settings.arguments;

    Widget screen;
    switch (settings.name) {
      case HomeScreenRoute:
        screen = HomeScreen();
        break;
      case OnboardingScreenRoute:
        screen = OnboardingScreen();
        break;

      default:
        screen = HomeScreen();
        break;
    }
    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}
