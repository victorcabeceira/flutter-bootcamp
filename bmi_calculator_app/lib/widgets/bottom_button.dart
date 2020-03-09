import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/constants/index.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onTap, this.text});

  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => onTap(),
        child: Container(
          color: kBottomContainerColor,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(bottom: 20),
          width: double.infinity,
          height: kBottomContainerHeight,
          child: Center(
            child: Text(text, style: kLargeButtonStyle),
          ),
        ),
      ),
    );
  }
}
