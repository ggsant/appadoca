import 'package:appadoca/app/UI/widgets/button.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:appadoca/app/utils/routes.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  CreateAccountScreen({Key key}) : super(key: key);

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
            Expanded(
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
                              Icons.person,
                              color: ThemeColors.kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Nome ",
                                hintStyle:
                                    TextStyle(color: ThemeColors.primaryColor),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "E-mail",
                                hintStyle:
                                    TextStyle(color: ThemeColors.primaryColor),
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
                      height: 50,
                    ),
                    ButtonSignIn(
                      text: 'Cadastrar e entrar',
                      onPressed: () {
                        Navigator.pushNamed(context, MenuHomeScreenRoute);
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
