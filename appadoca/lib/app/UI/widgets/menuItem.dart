import 'package:appadoca/app/UI/screens/home/inicio/detailsPage.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  MenuItem({
    this.imagem,
    this.title,
    this.description,
    this.detailDescription,
    this.price,
    this.isAvailable,
    this.unit,
    this.entrega,
    this.subTotal,
    this.total,
  });
  final String imagem;
  final String title;
  final String description;
  final String detailDescription;
  final String price;
  final bool isAvailable;
  final String unit;
  final String entrega;
  final String subTotal;
  final String total;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailsPage(
              title: title,
              description: detailDescription,
              price: price,
              isAvailable: isAvailable,
              img: imagem,
              unit: unit,
              entrega: entrega,
              subTotal: subTotal,
              total: total,
            ),
          ),
        );
      },
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0),
              blurRadius: 6.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(imagem),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xff3B012E),
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: Color(0xff3B012E),
                      fontWeight: FontWeight.normal,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5.0, bottom: 5, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.add_shopping_cart_rounded,
                    color: ThemeColors.kPrimaryColor,
                    size: 30,
                  ),
                  Text(
                    'R\$' + '$price',
                    style: TextStyle(
                      color: ThemeColors.kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
