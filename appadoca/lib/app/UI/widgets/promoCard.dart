import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  PromoCard({this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
