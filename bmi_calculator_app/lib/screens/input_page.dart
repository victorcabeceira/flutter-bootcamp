import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/widgets/index.dart';

const double bottomContainerHeight = 60.0;
const Color bottomContainerColor = Color(0xFFEB1555);
const Color activeCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: CustomCard(color: activeCardColor)),
                Expanded(child: CustomCard(color: activeCardColor)),
              ],
            ),
          ),
          Expanded(child: CustomCard(color: activeCardColor)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: CustomCard(color: activeCardColor)),
                Expanded(child: CustomCard(color: activeCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
