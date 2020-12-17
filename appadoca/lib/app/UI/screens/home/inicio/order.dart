import 'package:appadoca/app/UI/widgets/adress.dart';
import 'package:appadoca/app/UI/widgets/ordemCardItem.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({
    this.title,
    this.description,
    this.unit,
    this.price,
    this.entrega,
    this.subTotal,
    this.total,
    this.image,
  });
  final String title;
  final String description;
  final String unit;
  final String price;
  final String entrega;
  final String total;
  final String subTotal;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Adress(),
                    SizedBox(height: 20),
                    OrderCardItem(
                      title: title,
                      description: description,
                      unit: unit,
                      price: price,
                      entrega: entrega,
                      total: total,
                      subTotal: subTotal,
                      image: image,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final String title, example;
  final Color iconColor, titleColor, exampleColor, cardColor;

  const HomeCard({
    Key key,
    this.title,
    this.example,
    this.iconColor,
    this.titleColor,
    this.exampleColor,
    this.cardColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 160,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: ThemeColors.kPrimaryColor),
        color: cardColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 10,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: titleColor, fontSize: 12),
                  ),
                  Text(
                    example,
                    style: TextStyle(color: exampleColor, fontSize: 10),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
