import 'package:appadoca/app/UI/widgets/button.dart';
import 'package:appadoca/app/resources/strings.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:appadoca/app/utils/routes.dart';
import 'package:flutter/material.dart';

class ButtonsLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ThemeColors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              Strings.loginText,
              style: TextStyle(
                color: ThemeColors.secondaryTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            ButtonLogin(
              text: Strings.loginFace,
              onPressed: () {
                Navigator.pushNamed(context, SignInStepOneScreenRoute);
              },
            ),
            ButtonLogin(
              text: Strings.loginCel,
              onPressed: () {
                Navigator.pushNamed(context, SignInStepOneScreenRoute);
              },
            ),
            ButtonLogin(
              text: Strings.loginEmail,
              onPressed: () {
                Navigator.pushNamed(context, SignInStepOneScreenRoute);
              },
            ),
            ButtonLogin(
              text: Strings.createAccount,
              onPressed: () {
                Navigator.pushNamed(context, CreateAccountScreenRoute);
              },
            ),
            Text(
              Strings.createAccount,
              style: TextStyle(
                color: ThemeColors.secondaryTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
