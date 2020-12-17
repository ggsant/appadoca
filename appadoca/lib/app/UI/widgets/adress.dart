import 'package:appadoca/app/UI/screens/home/inicio/order.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';

class Adress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Endereço',
          style: TextStyle(
            color: ThemeColors.kPrimaryColor,
            fontSize: 20,
          ),
        ),
        Divider(),
        SizedBox(
          height: 70,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              HomeCard(
                title: "Minha casa",
                example: "Av Brasil, 778 - Jd Paraiso",
                cardColor: ThemeColors.kPrimaryColor,
                iconColor: Colors.white,
                exampleColor: Colors.white,
                titleColor: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              HomeCard(
                title: "Trabalho",
                example: "Av Mjr Nicássio, 444 - jd Brasil",
                cardColor: Colors.white,
                iconColor: Color(0xFF5117AC),
                exampleColor: Colors.grey,
                titleColor: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ThemeColors.kPrimaryColor,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 25,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
