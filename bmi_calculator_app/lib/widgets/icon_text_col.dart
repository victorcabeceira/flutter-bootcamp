import 'package:flutter/material.dart';

const double iconSize = 80.0;
const double sizedBoxHeight = 10.0;
const TextStyle labelTextStyle = TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          );

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
          style: labelTextStyle,
        ),
      ],
    );
  }
}
