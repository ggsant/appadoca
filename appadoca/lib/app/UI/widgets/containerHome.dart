import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {
  SmallContainer({this.text, this.img, this.color, this.onTap});
  final String text;
  final String img;
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: color,
        ),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 15, bottom: 30),
              alignment: Alignment.center,
              child: Image.asset(img, height: 150, fit: BoxFit.fitWidth),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BigContainer extends StatelessWidget {
  BigContainer({this.text, this.img, this.color, this.onTap});
  final String text;
  final String img;
  final Color color;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: color,
        ),
        child: Stack(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 15, bottom: 30),
                alignment: Alignment.center,
                child: Image.asset(img, height: 150, fit: BoxFit.fitWidth)),
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: ThemeColors.primaryTextColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
