import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';

class FoodTab extends StatefulWidget {
  final img;
  FoodTab(this.img);
  @override
  _FoodTabState createState() => _FoodTabState(this.img);
}

class _FoodTabState extends State<FoodTab> {
  var img;
  _FoodTabState(this.img);

  Widget itemMenu(var img, var color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Container(
        height: 80.0,
        width: 90.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(img),
        ),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(25.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.30,
                  child: Column(
                    children: <Widget>[
                      itemMenu("assets/1.png", Colors.grey[500]),
                      itemMenu("assets/2.png", Colors.grey[500]),
                      itemMenu("assets/3.png", Colors.grey[500]),
                      itemMenu("assets/4.png", Colors.grey[500]),
                      itemMenu("assets/5.png", Colors.grey[200]),
                      itemMenu("assets/1.png", Colors.grey[500]),
                      itemMenu("assets/2.png", Colors.grey[500]),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.58,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Image(
                      image: AssetImage(img),
                      height: 250,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Wrap(
                    children: <Widget>[
                      Text(
                        "Cup Cake",
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "1 Unidade",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "\$ 4.99",
                    style: TextStyle(
                        fontSize: 42.0,
                        color: ThemeColors.kPrimaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Wrap(
                    children: <Widget>[
                      Text(
                        "Bolo de baunilha com recheio de geleia caseira de frutas vermelhas e cobertura de ganache de chocolate branco.",
                        style: TextStyle(
                          fontSize: 18.0,
                          letterSpacing: 0.85,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
