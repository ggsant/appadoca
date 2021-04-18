import 'package:appadoca/app/UI/widgets/customAppBar.dart';
import 'package:appadoca/app/UI/widgets/customMenuList.dart';
import 'package:appadoca/app/UI/widgets/pedidosCard.dart';
import 'package:appadoca/app/UI/widgets/promoCard.dart';
import 'package:flutter/material.dart';

class PedidosScreen extends StatefulWidget {
  @override
  _PedidosScreenState createState() => _PedidosScreenState();
}

class _PedidosScreenState extends State<PedidosScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CustomAppBar(),
        Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                PedidosCard(
                  imagem: 'assets/cake2.jpg',
                  title: 'Bolo natalino',
                  total: '10,00',
                ),
                PedidosCard(
                  imagem: 'assets/bread.jpg',
                  title: 'Pão do padre',
                  total: '10,00',
                ),
                PedidosCard(
                  imagem: 'assets/panettone.jpg',
                  title: 'Panetone',
                  total: '10,00',
                ),
                PedidosCard(
                  imagem: 'assets/bread.jpg',
                  title: 'Pão do padre',
                  total: '10,00',
                ),
              ],
            ))
      ],
    );
  }
}
