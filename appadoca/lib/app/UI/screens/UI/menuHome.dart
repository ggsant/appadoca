import 'package:appadoca/app/UI/widgets/containerHome.dart';
import 'package:appadoca/app/UI/widgets/customAppBar.dart';
import 'package:appadoca/app/UI/widgets/customMenu.dart';
import 'package:appadoca/app/UI/widgets/customMenuList.dart';
import 'package:appadoca/app/UI/widgets/menu.dart';
import 'package:appadoca/app/UI/widgets/shoppingCart.dart';
import 'package:appadoca/app/UI/widgets/title.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:appadoca/app/utils/routes.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'inicio.dart';

class MenuHomeScreen extends StatefulWidget {
  @override
  _MenuHomeScreenState createState() => _MenuHomeScreenState();
}

class _MenuHomeScreenState extends State<MenuHomeScreen> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
    Container(color: Colors.red),
    Container(color: Colors.pink),
  ];
  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: ThemeColors.terciaryColor,
        body: PageView(
          controller: _pageController,
          children: <Widget>[
            InicioScreen(),
            Center(
              child: Icon(
                Icons.near_me,
                color: Colors.yellow,
              ),
            ),
            Center(
              child: Icon(
                Icons.shopping_cart,
                color: Colors.blue,
              ),
            ),
            Center(
              child: Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 110,
          child: CustomBottomNavigationBar(
            backgroundColor: ThemeColors.terciaryColor,
            itemBackgroudnColor: ThemeColors.kPrimaryColor,
            itemOutlineColor: ThemeColors.kPrimaryColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: [
              CustomBottomNavigationBarItem(
                icon: Icons.home,
                title: "Início",
              ),
              CustomBottomNavigationBarItem(
                icon: MdiIcons.sale,
                title: "Busca",
              ),
              CustomBottomNavigationBarItem(
                icon: Icons.list_alt,
                title: "Pedidos",
              ),
              CustomBottomNavigationBarItem(
                icon: Icons.person,
                title: "Perfil",
              ),
            ],
            onTap: (index) {
              _pageController.animateToPage(index,
                  curve: Curves.fastLinearToSlowEaseIn,
                  duration: Duration(milliseconds: 600));
            },
          ),
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
