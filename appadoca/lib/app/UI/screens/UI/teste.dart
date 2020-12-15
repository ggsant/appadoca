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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ThemeColors.terciaryColor,
        body: ListView(
          children: <Widget>[
            CustomAppBar(),
            CustomMenuList(),
            TitleHome(title: 'menu'),
            Menu(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 32.0,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.photo_filter,
                    color: Colors.black87,
                    size: 32.0,
                  ),
                  onPressed: () {}),
              Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 62,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey[200],
                  ),
                  child: IconButton(
                      icon: Icon(
                        Icons.fullscreen_exit,
                        size: 28.0,
                        color: ThemeColors.kPrimaryColor,
                      ),
                      onPressed: () {})),
              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 32.0,
                  ),
                  onPressed: () {}),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 62,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: IconButton(
                  icon: Icon(
                    MdiIcons.accountArrowRightOutline,
                    size: 28.0,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, ProfileScreenRoute);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
