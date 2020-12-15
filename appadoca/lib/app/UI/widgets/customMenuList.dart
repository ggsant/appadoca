import 'package:appadoca/app/UI/widgets/customMenu.dart';
import 'package:flutter/material.dart';

class CustomMenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CustomMenu(
            img: "assets/9.png",
            title: "CupCake",
            color: Color(0xffF3F3F3),
          ),
          CustomMenu(
            img: "assets/10.png",
            title: "Bolos",
            color: Color(0xffF3F3F3),
          ),
          CustomMenu(
            img: "assets/11.png",
            title: "Salgados",
            color: Color(0xffF3F3F3),
          ),
          CustomMenu(
            img: "assets/12.png",
            title: "Pães",
            color: Color(0xffF3F3F3),
          ),
          CustomMenu(
            img: "assets/13.png",
            title: "Tortas",
            color: Color(0xffF3F3F3),
          ),
          CustomMenu(
            img: "assets/14.png",
            title: "Bebidas",
            color: Color(0xffF3F3F3),
          ),
          CustomMenu(
              img: "assets/9.png", title: "Muffins", color: Color(0xffF3F3F3)),
        ],
      ),
    );
  }
}
