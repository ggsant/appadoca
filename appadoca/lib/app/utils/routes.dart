import 'package:appadoca/app/UI/screens/home/menuHome.dart';
import 'package:appadoca/app/UI/screens/home/perfil/profile.dart';
import 'package:appadoca/app/UI/screens/sign/create_account.dart';
import 'package:appadoca/app/UI/screens/sign/login.dart';
import 'package:appadoca/app/UI/screens/sign/onboarding.dart';
import 'package:appadoca/app/UI/screens/sign/signIn_step1.dart';
import 'package:appadoca/app/UI/screens/sign/signIn_step2.dart';
import 'package:flutter/material.dart';

const String HomeScreenRoute = '/';
const String OnboardingScreenRoute = '/onboardingRoute';
const String SignInStepOneScreenRoute = '/signInStepOneRoute';
const String SignInStepTwoScreenRoute = '/signInStepTwoRoute';
const String CreateAccountScreenRoute = '/createAccountRoute';
const String ProfileScreenRoute = '/profileRoute';

const String MenuHomeScreenRoute = '/menuHomeRoute';

RouteFactory routes() {
  return (settings) {
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
      case CreateAccountScreenRoute:
        screen = CreateAccountScreen();
        break;
      case MenuHomeScreenRoute:
        screen = MenuHomeScreen();
        break;
      case ProfileScreenRoute:
        screen = ProfileScreen();
        break;

      default:
        screen = HomeScreen();
        break;
    }
    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}
