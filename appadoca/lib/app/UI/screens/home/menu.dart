import 'package:appadoca/app/UI/widgets/containerHome.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BigContainer(
              text: "CupCake de limão",
              img: "assets/bread.jpg",
              color: Colors.red[100],
              onTap: () {},
            ),
            SizedBox(
              height: 10.0,
            ),
            BigContainer(
              text: "Bolo",
              img: "assets/cake1.jpg",
              color: Colors.red[100],
              onTap: () {},
            ),
            BigContainer(
              text: "Pães",
              img: "assets/cake2.jpg",
              color: Colors.brown[100],
              onTap: () {},
            ),
            SizedBox(
              height: 10.0,
            ),
            BigContainer(
              text: "Doces",
              img: "assets/cupcakes.png",
              color: Colors.pink[100],
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
