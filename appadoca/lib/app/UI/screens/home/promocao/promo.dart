import 'package:appadoca/app/UI/widgets/customAppBar.dart';
import 'package:appadoca/app/UI/widgets/customMenuList.dart';
import 'package:appadoca/app/UI/widgets/menuItem.dart';
import 'package:appadoca/app/UI/widgets/promoCard.dart';
import 'package:flutter/material.dart';

class PromoScreen extends StatefulWidget {
  @override
  _PromoScreenState createState() => _PromoScreenState();
}

class _PromoScreenState extends State<PromoScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CustomAppBar(),
        Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                PromoCard(image: "assets/promo1.png"),
                SizedBox(height: 15),
                PromoCard(image: "assets/promo2.png"),
                SizedBox(height: 15),
                PromoCard(image: "assets/promo3.png"),
                SizedBox(height: 15),
                PromoCard(image: "assets/promo4.png"),
                SizedBox(height: 15),
                PromoCard(image: "assets/promo5.png"),
                SizedBox(height: 15),
              ],
            ))
      ],
    );
  }
}
