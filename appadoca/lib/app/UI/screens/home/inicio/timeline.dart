import 'package:appadoca/app/UI/widgets/timeline.dart';
import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';

import '../menuHome.dart';


class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black,
      ),
      body: ProcessTimelinePage(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MenuHomeScreen(),
            ),
          );
        },
        icon: Icon(Icons.check),
        label: Text("Pedido recebido"),
        backgroundColor: ThemeColors.kPrimaryColor,
      ),
    );
  }
}
