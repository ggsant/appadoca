import 'package:appadoca/app/UI/screens/UI/FoodTab.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';

class FoodDetails extends StatefulWidget {
  final title, img;
  FoodDetails(this.title, this.img);
  @override
  _FoodDetailsState createState() => _FoodDetailsState(this.title, this.img);
}

class _FoodDetailsState extends State<FoodDetails>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  var title, img;
  _FoodDetailsState(this.title, this.img);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ThemeColors.terciaryColor,
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 22.0,
          ),
          ListTile(
            leading: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              color: Colors.grey,
              child: Container(
                height: 60,
                width: 55,
                margin: EdgeInsets.all(0.50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: IconButton(
                    icon: Icon(Icons.arrow_back_ios,
                        color: ThemeColors.kPrimaryColor),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Wrap(
                  children: <Widget>[
                    Text(
                      title.toUpperCase(),
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        letterSpacing: 0.75,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.restaurant_menu,
                              color: ThemeColors.kPrimaryColor),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(Icons.menu,
                              color: ThemeColors.kPrimaryColor),
                          onPressed: () {})
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 22.0,
          ),
          TabBar(
            indicatorColor: Colors.transparent,
            isScrollable: true,
            unselectedLabelColor: Colors.white,
            labelColor: ThemeColors.kPrimaryColor,
            labelStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.75,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 18.0,
              letterSpacing: 0.75,
              fontWeight: FontWeight.w400,
            ),
            controller: tabController,
            tabs: <Widget>[
              Tab(
                child: Text("Menu"),
              ),
              Tab(
                child: Text("Populares"),
              ),
              Tab(
                child: Text("Novos Itens"),
              ),
              Tab(
                child: Text("Promoções"),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                FoodTab(img),
                FoodTab(img),
                FoodTab(img),
                FoodTab(img),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
            color: ThemeColors.kPrimaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
            )),
        child: IconButton(
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.white,
              size: 36.0,
            ),
            onPressed: () {}),
      ),
    ));
  }
}
