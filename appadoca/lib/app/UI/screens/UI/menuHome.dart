import 'package:appadoca/app/UI/widgets/containerHome.dart';
import 'package:appadoca/app/UI/widgets/customAppBar.dart';
import 'package:appadoca/app/UI/widgets/customMenu.dart';
import 'package:appadoca/app/UI/widgets/customMenuList.dart';
import 'package:appadoca/app/UI/widgets/menu.dart';
import 'package:appadoca/app/UI/widgets/shoppingCart.dart';
import 'package:appadoca/app/UI/widgets/title.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:appadoca/app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: ThemeColors.terciaryColor,
        body: _telas[_indiceAtual],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 32.0,
                color: Colors.black,
              ),
              label: "Inicio",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 32.0,
                color: Colors.black,
              ),
              label: "Busca",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt,
                size: 32.0,
                color: Colors.black,
              ),
              label: "Busca",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.accountArrowRightOutline,
                size: 28.0,
                color: Colors.black,
              ),
              label: "Perfil",
            ),
          ],
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
