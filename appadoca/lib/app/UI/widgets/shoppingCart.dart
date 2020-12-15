import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.0,
      width: 64.0,
      decoration: BoxDecoration(
        color: ThemeColors.kPrimaryColor,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            Icon(Icons.shopping_basket, color: Colors.white, size: 28.0),
            Spacer(),
            Text(
              "3",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
