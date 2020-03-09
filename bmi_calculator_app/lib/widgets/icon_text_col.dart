import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/constants/index.dart';

const double iconSize = 80.0;
const double sizedBoxHeight = 10.0;

class IconTextColumn extends StatelessWidget {
  IconTextColumn({@required this.icon, @required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
