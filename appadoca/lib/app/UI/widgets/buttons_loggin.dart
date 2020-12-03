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
            Text(Strings.CREATE_ACCOUNT,
                style: TextStyle(
                  color: ThemeColors.secondaryTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                )),
            ButtonLogin(
              text: Strings.LOGIN_FACE,
              onPressed: () {
                Navigator.pushNamed(context, SignInStepOneScreenRoute);
              },
            ),
            ButtonLogin(
              text: Strings.LOGIN_PHONE,
              onPressed: () {
                Navigator.pushNamed(context, SignInStepOneScreenRoute);
              },
            ),
            ButtonLogin(
              text: Strings.LOGIN_EMAIL,
              onPressed: () {
                Navigator.pushNamed(context, SignInStepOneScreenRoute);
              },
            ),
            ButtonLogin(
              text: Strings.CREATED_ACCOUNT,
              onPressed: () {
                Navigator.pushNamed(context, CreateAccountScreenRoute);
              },
            ),
            Text(Strings.CREATED_BY,
                style: TextStyle(
                  color: ThemeColors.secondaryTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                )),
          ],
        ),
      ),
    );
  }
}
