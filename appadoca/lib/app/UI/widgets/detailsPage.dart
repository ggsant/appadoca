import 'package:appadoca/app/UI/screens/UI/order.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';

import 'button.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage(
      {this.title, this.description, this.price, this.isAvailable, this.img});
  final String title;
  final String description;
  final String price;
  final bool isAvailable;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Image.asset(
              img,
              height: 300,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: ThemeColors.kPrimaryColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Positioned(
              top: 280,
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0) //
                      ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'São Carlos',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          isAvailable == true
                              ? "Item disponivel"
                              : "Item indisponível",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    ButtonDetailsPage(
                      text: 'Adicionar no carrinho',
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CartScreen(
                                // title: title,
                                // description: description,
                                // price: price,
                                // isAvailable: isAvailable,
                                // img: img,
                                ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 250,
                left: 25,
                child: FloatingActionButton(
                  backgroundColor: ThemeColors.kPrimaryColor,
                  onPressed: () {
                    // setState(() {
                    //   isFav = !isFav;
                    // });
                  },
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: null,
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
