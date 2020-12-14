import 'package:appadoca/app/UI/widgets/title.dart';
import 'package:appadoca/app/resources/strings.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            TitleFont(
              fontSize: 40,
              text: Strings.title,
            ),
          ],
        ),
      ),
    );
  }
}
