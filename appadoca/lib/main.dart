import 'package:appadoca/app/UI/screens/home.dart';
import 'package:appadoca/app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

void main() {
  runApp(OneWidgetPerDay());
  ScreenUtil.init(designSize: Size(360, 900));
}

class OneWidgetPerDay extends StatelessWidget {
  const OneWidgetPerDay({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ErrorWidget.builder = (FlutterErrorDetails details) => Container(
          color: Colors.pinkAccent,
          child: Text(
            'Deu erro 😥',
            style: TextStyle(color: Colors.white),
          ),
        );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OneWidgetPerDay',
      theme: ThemeData(),
      home: HomeScreen(),
      onGenerateRoute: routes(),
    );
  }
}
