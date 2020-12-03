import 'package:appadoca/app/UI/screens/UI/menuHome.dart';
import 'package:appadoca/app/UI/screens/home.dart';
import 'package:appadoca/app/UI/screens/onboarding.dart';
import 'package:appadoca/app/UI/screens/sign/signIn_step1.dart';
import 'package:appadoca/app/UI/screens/sign/signIn_step2.dart';
import 'package:flutter/material.dart';

const String HomeScreenRoute = '/';
const String OnboardingScreenRoute = '/onboardingRoute';
const String SignInStepOneScreenRoute = '/signInStepOneRoute';
const String SignInStepTwoScreenRoute = '/signInStepTwoRoute';
const String MenuHomeScreenRoute = '/menuHomeRoute';

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
      case SignInStepOneScreenRoute:
        screen = SignInStepOneScreen();
        break;
      case SignInStepTwoScreenRoute:
        screen = SignInStepTwoScreen();
        break;
      case MenuHomeScreenRoute:
        screen = MenuHomeScreen();
        break;

      default:
        screen = HomeScreen();
        break;
    }
    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}
