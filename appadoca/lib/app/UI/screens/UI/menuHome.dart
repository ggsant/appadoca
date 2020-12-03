import 'package:appadoca/app/UI/screens/UI/FoodDetails.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';

class MenuHomeScreen extends StatefulWidget {
  @override
  _MenuHomeScreenState createState() => _MenuHomeScreenState();
}

class _MenuHomeScreenState extends State<MenuHomeScreen> {
  Widget smallContainer(var text, var img, var color) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => FoodDetails(text, img)));
      },
      child: Container(
        height: 150,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: color,
        ),
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(img, height: 80, fit: BoxFit.fitHeight),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bigContainer(String text, String img, var color) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => FoodDetails(text, img)));
      },
      child: Container(
        height: 150,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: color,
        ),
        child: Stack(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 15, bottom: 30),
                alignment: Alignment.center,
                child: Image.asset(img, height: 150, fit: BoxFit.fitWidth)),
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: ThemeColors.primaryTextColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customMenu(String img, String title, var color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        children: <Widget>[
          Container(
            width: 62,
            height: 62,
            decoration: BoxDecoration(
              color: Color(color),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image(
                fit: BoxFit.contain,
                image: AssetImage(img),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w800,
                  color: ThemeColors.secondaryTextColor),
            ),
          )
        ],
      ),
    );
  }

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.timeline,
                      size: 28.0, color: ThemeColors.kPrimaryColor),
                  Spacer(),
                  Container(
                    height: 46.0,
                    width: 64.0,
                    decoration: BoxDecoration(
                      color: ThemeColors.kPrimaryColor,
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.shopping_basket,
                              color: Colors.white, size: 28.0),
                          Spacer(),
                          Text(
                            "3",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              height: 52.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: ThemeColors.kPrimaryColor,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  customMenu("assets/pic51.png", "Food", 0xffF3F3F3),
                  customMenu("assets/pic52.png", "Snacks", 0xffF3F3F3),
                  customMenu("assets/pic53.png", "Dessert", 0xffF3F3F3),
                  customMenu("assets/pic54.png", "Drink", 0xffF3F3F3),
                  customMenu("assets/pic55.png", "Fish", 0xffF3F3F3),
                  customMenu("assets/pic56.png", "Food", 0xffF3F3F3),
                  customMenu("assets/pic57.png", "Juice", 0xffF3F3F3),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: Text(
                "Food Menu",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    color: ThemeColors.secondaryTextColor),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: <Widget>[
                          bigContainer(
                            "Cup Cake",
                            "assets/1.png",
                            Colors.red[100],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          bigContainer(
                            "Bolos",
                            "assets/bolo2.png",
                            Colors.yellow[100],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          bigContainer(
                            "Pães",
                            "assets/pic21.png",
                            Colors.brown[100],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          bigContainer(
                            "Doces",
                            "assets/pic31.png",
                            Colors.pink[100],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: <Widget>[
                          smallContainer(
                            "Big Burgers",
                            "assets/pic5.png",
                            Colors.indigo[100],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          smallContainer(
                            "Snaks",
                            "assets/pic5.png",
                            Colors.orange[100],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          smallContainer(
                            "Pizza",
                            "assets/pic34.png",
                            Colors.teal[100],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          smallContainer(
                            "Pizza",
                            "assets/pic34.png",
                            Colors.teal[100],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
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
                        color: Colors.deepOrange,
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
                  color: Colors.pink[100],
                ),
                child: Image.asset("assets/user2.png",
                    height: 42, fit: BoxFit.fitHeight),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
