import 'package:appadoca/app/resources/theme_colors.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  PaymentWidget createState() => PaymentWidget();
}

class PaymentWidget extends State {
  String radioButtonItem = 'Cartão';

  int id = 1;

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Metodo de pagamento: ' + '$radioButtonItem',
          style: TextStyle(
            color: ThemeColors.primaryTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Radio(
              activeColor: ThemeColors.kPrimaryColor,
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Cartão';
                  id = 1;
                });
              },
            ),
            Text(
              'Cartão',
              style: new TextStyle(fontSize: 17.0),
            ),
            Radio(
              activeColor: ThemeColors.kPrimaryColor,
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Dinheiro';
                  id = 2;
                });
              },
            ),
            Text(
              'Dinheiro',
              style: new TextStyle(
                fontSize: 17.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
