import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:appadoca/app/utils/routes.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:flutter/material.dart';

class SignInStepTwoScreen extends StatefulWidget {
  SignInStepTwoScreen({Key key}) : super(key: key);

  @override
  _SignInStepTwoScreenState createState() => _SignInStepTwoScreenState();
}

class _SignInStepTwoScreenState extends State<SignInStepTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ThemeColors.terciaryColor,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/perosn.jpeg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Icon(
                                Icons.alternate_email,
                                color: ThemeColors.kPrimaryColor,
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "E-mail",
                                  labelText: 'E-mail *',
                                  labelStyle: TextStyle(
                                      color: ThemeColors.primaryColor),
                                  hintStyle: TextStyle(
                                      color: ThemeColors.primaryColor),
                                ),
                                style: TextStyle(
                                  color: ThemeColors.primaryColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.lock,
                              color: ThemeColors.kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Senha",
                                hintStyle:
                                    TextStyle(color: ThemeColors.primaryColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 500.0,
                        height: 180.0,
                        child: TextLiquidFill(
                          text: 'Adoce sua vida',
                          waveColor: Colors.pink[800],
                          boxBackgroundColor: ThemeColors.terciaryColor,
                          textStyle: TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold,
                          ),
                          boxHeight: 160.0,
                          loadDuration: Duration(seconds: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: ThemeColors.kPrimaryColor,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushNamed(context, MenuHomeScreenRoute);
          },
        ),
      ),
    );
  }
}
