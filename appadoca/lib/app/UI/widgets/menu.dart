import 'package:flutter/material.dart';

import 'containerHome.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: <Widget>[
                  BigContainer(
                    text: "Cup Cake",
                    img: "assets/1.png",
                    color: Colors.red[100],
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  BigContainer(
                    text: "Bolo",
                    img: "assets/bolo2.png",
                    color: Colors.yellow[100],
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  BigContainer(
                    text: "Pães",
                    img: "assets/15.png",
                    color: Colors.brown[100],
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  BigContainer(
                    text: "Doces",
                    img: "assets/8.png",
                    color: Colors.pink[100],
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: <Widget>[
                  SmallContainer(
                    text: "Panetone",
                    img: "assets/7.png",
                    color: Colors.indigo[100],
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SmallContainer(
                    text: "Bolo",
                    img: "assets/bolo3.png",
                    color: Colors.orange[100],
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SmallContainer(
                    text: "CupCake",
                    img: "assets/4.png",
                    color: Colors.teal[100],
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SmallContainer(
                    text: "Bolo",
                    img: "assets/bolo4.png",
                    color: Colors.teal[100],
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
