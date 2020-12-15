import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  CustomImage({this.pathImage});
  final String pathImage;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      pathImage,
      width: 300,
      height: 200,
    );
  }
}
