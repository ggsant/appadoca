import 'package:appadoca/app/UI/widgets/adress.dart';
import 'package:appadoca/app/UI/widgets/ordemCardItem.dart';
import 'package:appadoca/app/UI/widgets/payment.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Adress(),
                    SizedBox(height: 20),
                    OrderCardItem(),
                    SizedBox(height: 20),
                    Payment(),
                    SizedBox(height: 100)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final String title, example;
  final Color iconColor, titleColor, exampleColor, cardColor;

  const HomeCard({
    Key key,
    this.title,
    this.example,
    this.iconColor,
    this.titleColor,
    this.exampleColor,
    this.cardColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 160,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: ThemeColors.kPrimaryColor),
        color: cardColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 10,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: titleColor, fontSize: 12),
                  ),
                  Text(
                    example,
                    style: TextStyle(color: exampleColor, fontSize: 10),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LeftPartBNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 8.0;
    Path path = Path()..moveTo(size.width, 0);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.5, size.width, size.height);
    path.lineTo(size.width * 0.2, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height * 0.3);

    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(0, 0, size.width * 0.2, 0);
    path.close();
    canvas.drawShadow(path, Colors.black, 0.25, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class RightPartBNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 5.0;
    Path path = Path()..moveTo(0, 0);
    path.lineTo(size.width * 0.8, 0);
    path.quadraticBezierTo(size.width, 0, size.width, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.4);
    path.quadraticBezierTo(
        size.width, size.height, size.width * 0.8, size.height);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.5, 0, 0);
    path.close();
    canvas.drawShadow(path, Colors.black, 0.25, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
