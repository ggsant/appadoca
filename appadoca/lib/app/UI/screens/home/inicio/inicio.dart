import 'package:appadoca/app/UI/widgets/customAppBar.dart';
import 'package:appadoca/app/UI/widgets/customMenuList.dart';
import 'package:appadoca/app/UI/widgets/menuItem.dart';
import 'package:flutter/material.dart';

class InicioScreen extends StatefulWidget {
  @override
  _InicioScreenState createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CustomAppBar(),
        CustomMenuList(),
        MenuItem(
          imagem: 'assets/cake1.jpg',
          title: 'Bolo de chocolate',
          description: 'Bolo de chocolate com cobertura de ganache..',
          price: '10,00',
          isAvailable: true,
          detailDescription:
              'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem ',
          entrega: 'Gratis',
          unit: '1',
          subTotal: '10,00',
          total: '10,00',
        ),
        MenuItem(
          imagem: 'assets/cake2.jpg',
          title: 'Bolo natalino',
          description: 'Bolo de especial de natal feito de nozes, chocolate...',
          price: '8,00',
          isAvailable: true,
          detailDescription:
              'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem ',
          entrega: 'Gratis',
          unit: '1',
          subTotal: '10,00',
          total: '10,00',
        ),
        MenuItem(
          imagem: 'assets/cupcakes.jpg',
          title: 'Cupcake de paçoca',
          description: 'Cupcake de paçoca com creme de amendoin...',
          price: '5,00',
          isAvailable: true,
          detailDescription:
              'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem ',
          entrega: 'Gratis',
          unit: '1',
          subTotal: '10,00',
          total: '10,00',
        ),
        MenuItem(
          imagem: 'assets/bread.jpg',
          title: 'Pão do padre',
          description: 'Pão do padre fofinho feito com trigo e ...',
          price: '15,00',
          isAvailable: true,
          detailDescription:
              'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem ',
          entrega: 'Gratis',
          unit: '1',
          subTotal: '10,00',
          total: '10,00',
        ),
        MenuItem(
          imagem: 'assets/panettone.jpg',
          title: 'Panetone',
          description: 'Panettone simples, com frutas cristalizadas e rum...',
          price: '20,00',
          isAvailable: true,
          detailDescription:
              'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem ',
          entrega: 'Gratis',
          unit: '1',
          subTotal: '10,00',
          total: '10,00',
        ),
        MenuItem(
          imagem: 'assets/cake4.jpg',
          title: 'Bolo de Morango',
          description: 'Bolo massa felpuda com cobertura de morango..',
          price: '12,00',
          isAvailable: true,
          detailDescription:
              'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem ',
          entrega: 'Gratis',
          unit: '1',
          subTotal: '10,00',
          total: '10,00',
        ),
      ],
    );
  }
}
