import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({
    this.shape,
    this.color,
    this.backgroundColor,
    this.onPressed,
    this.elevation,
    this.icon,
  });

  final ShapeBorder shape;
  final Color color;
  final Color backgroundColor;
  final Function onPressed;
  final double elevation;
  final IconData icon;

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
