import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleFont extends StatelessWidget {
  TitleFont({this.fontSize, this.text});

  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.shadowsIntoLight(
        textStyle: TextStyle(
          color: Colors.purple[300],
          fontWeight: FontWeight.w700,
          fontSize: fontSize,
        ),
      ),
      textAlign: TextAlign.center,
    );
  }
}

class TitleHome extends StatelessWidget {
  TitleHome({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w700,
          color: ThemeColors.secondaryTextColor,
        ),
      ),
    );
  }
}
