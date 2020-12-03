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
        borderRadius: BorderRadius.circular(20.0),
      ),
      minWidth: 250.0,
      height: 35,
      color: Colors.pink[800],
      child: Text(text, style: TextStyle(fontSize: 16.0, color: Colors.white)),
      onPressed: onPressed,
    );
  }
}

class ButtonSignIn extends StatelessWidget {
  ButtonSignIn({
    this.text,
    this.onPressed,
  });

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      minWidth: 250.0,
      height: 50,
      color: Colors.pink[800],
      child: Row(
        children: [
          Text(text, style: TextStyle(fontSize: 20, color: Colors.white)),
          SizedBox(width: 5),
          Icon(Icons.login, color: Colors.white, size: 20),
        ],
      ),
      onPressed: onPressed,
    );
  }
}
