import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({
    @required this.icon,
    @required this.onPressed,
    this.shape,
    this.color,
    this.backgroundColor,
    this.elevation,
  });

  final IconData icon;
  final Function onPressed;
  final ShapeBorder shape;
  final Color color;
  final Color backgroundColor;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: shape,
      fillColor: backgroundColor,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      onPressed: onPressed,
      elevation: elevation,
      child: Icon(icon),
    );
  }
}
