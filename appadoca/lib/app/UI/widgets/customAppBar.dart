import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 22.0),
        Container(
          margin: EdgeInsets.all(16.0),
          height: 52.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: ThemeColors.kPrimaryColor,
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Buscar",
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
