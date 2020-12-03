import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:appadoca/app/UI/screens/sign/signIn_step2.dart';
import 'package:appadoca/app/UI/widgets/button.dart';
import 'package:appadoca/app/UI/widgets/buttons_loggin.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:appadoca/app/utils/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInStepOneScreen extends StatefulWidget {
  SignInStepOneScreen({Key key}) : super(key: key);

  @override
  _SignInStepOneScreenState createState() => _SignInStepOneScreenState();
}

class _SignInStepOneScreenState extends State<SignInStepOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              child: Image.asset(
                "assets/perosn.jpeg",
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              top: 0.h,
              child: SizedBox(
                width: 500.0,
                height: 100.0,
                child: TextLiquidFill(
                  text: 'APPADOCA',
                  waveColor: Colors.pink[800],
                  boxBackgroundColor: ThemeColors.terciaryColor,
                  textStyle: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 100.0,
                  loadDuration: Duration(seconds: 10),
                ),
              ),
            ),
            Positioned(
              top: 750.h,
              left: 50.w,
              child: ButtonSignIn(
                text: 'Entrar',
                onPressed: () {
                  Navigator.pushNamed(context, SignInStepTwoScreenRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
