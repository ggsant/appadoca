import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  ButtonLogin({
    this.text,
    this.onPressed,
  });

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      minWidth: 250.0,
      height: 35,
      color: Colors.pink[800],
      child: Text(text, style: TextStyle(fontSize: 16.0, color: Colors.white)),
      onPressed: onPressed,
    );
  }
}
