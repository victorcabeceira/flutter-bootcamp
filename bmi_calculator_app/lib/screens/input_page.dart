import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/widgets/index.dart';

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
                Expanded(child: CustomCard(color: Color(0xFF1D1E33))),
                Expanded(child: CustomCard(color: Color(0xFF1D1E33))),
              ],
            ),
          ),
          Expanded(child: CustomCard(color: Color(0xFF1D1E33))),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: CustomCard(color: Color(0xFF1D1E33))),
                Expanded(child: CustomCard(color: Color(0xFF1D1E33))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
