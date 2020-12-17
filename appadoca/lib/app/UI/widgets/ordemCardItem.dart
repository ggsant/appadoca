import 'package:appadoca/app/UI/screens/home/inicio/payment.dart';
import 'package:appadoca/app/UI/screens/home/inicio/timeline.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';

class OrderCardItem extends StatelessWidget {
  OrderCardItem({
    this.title,
    this.description,
    this.unit,
    this.price,
    this.entrega,
    this.subTotal,
    this.total,
    this.image,
  });
  final String title;
  final String description;
  final String unit;
  final String price;
  final String entrega;
  final String total;
  final String subTotal;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 450,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  height: 450,
                  width: 290,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 20,
                        spreadRadius: -8,
                        color: Colors.grey.withOpacity(0.2),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 15),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(image),
                        ),
                        SizedBox(height: 5),
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ThemeColors.primaryTextColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: ThemeColors.kPrimaryColor,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.remove,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              unit,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: ThemeColors.kPrimaryColor,
                                  borderRadius: BorderRadius.circular(14)),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Spacer(),
                            Text(
                              price,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: ThemeColors.kPrimaryColor,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              "SubTotal",
                              style: TextStyle(
                                color: ThemeColors.primaryTextColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            Text(
                              subTotal,
                              style: TextStyle(
                                color: ThemeColors.kPrimaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              "Entrega",
                              style: TextStyle(
                                color: ThemeColors.primaryTextColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            Text(
                              entrega,
                              style: TextStyle(
                                color: ThemeColors.kPrimaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              "Total:",
                              style: TextStyle(
                                fontSize: 25,
                                color: ThemeColors.primaryTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Text(
                              total,
                              style: TextStyle(
                                fontSize: 22,
                                color: ThemeColors.primaryTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Payment(),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Timeline(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ThemeColors.kPrimaryColor,
                      ),
                      height: 75,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Finalizar pedido",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
      ]),
    );
  }
}
