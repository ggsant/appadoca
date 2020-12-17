import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:custom_bottom_navigation_bar/custom_bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'inicio/inicio.dart';
import 'pedidos/pedidos.dart';
import 'perfil/profile.dart';
import 'promocao/promo.dart';

class MenuHomeScreen extends StatefulWidget {
  @override
  _MenuHomeScreenState createState() => _MenuHomeScreenState();
}

class _MenuHomeScreenState extends State<MenuHomeScreen> {
  int _indiceAtual = 0;

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
            PromoScreen(),
            PedidosScreen(),
            ProfileScreen()
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
                title: "Promoção",
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
