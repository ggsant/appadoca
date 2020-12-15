import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';

class OrderCardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 350,
        child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  height: 350,
                  width: 290,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 20,
                          spreadRadius: -8,
                          color: Colors.grey.withOpacity(0.2))
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 15),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("assets/cake1.jpg"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Big Burger Cheese",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ThemeColors.primaryTextColor,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Charbroiled all-beef patty, melted American cheese,"
                          " dill pickles, onions, mustard and ketchup on a toasted seeded bun.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                            color: ThemeColors.primaryTextColor,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(14)),
                              child: Center(
                                child: Icon(
                                  Icons.remove,
                                  size: 30,
                                  color: Color(0xFF5117AC),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "2",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: ThemeColors.kPrimaryColor,
                                  borderRadius: BorderRadius.circular(14)),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.grey[300],
                                ),
                              ),
                            ),
                            Spacer(),
                            Text(
                              "\$20",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: ThemeColors.kPrimaryColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -10,
                  right: -10,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.restore_from_trash,
                      color: Colors.white,
                    ),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ThemeColors.kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
