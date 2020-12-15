import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {
  CustomMenu({this.title, this.img, this.color});
  final String title;
  final String img;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        children: <Widget>[
          Container(
            width: 62,
            height: 62,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image(
                fit: BoxFit.contain,
                image: AssetImage(img),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w800,
                color: ThemeColors.secondaryTextColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
