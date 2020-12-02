import 'package:appadoca/app/UI/widgets/button.dart';
import 'package:appadoca/app/UI/widgets/buttons_loggin.dart';
import 'package:appadoca/app/UI/widgets/custom_text.dart';
import 'package:appadoca/app/resources/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/background1.jpg',
            fit: BoxFit.fitHeight,
          ),
          Positioned(
            top: 80.h,
            left: 45.w,
            child: Image.asset(
              'assets/logo.png',
              height: 400.h,
            ),
          ),
          Positioned(
            bottom: 80.h,
            left: 40.w,
            child: Center(
              child: ButtonsLogin(),
            ),
          ),
        ],
      )),
    );
  }
}
