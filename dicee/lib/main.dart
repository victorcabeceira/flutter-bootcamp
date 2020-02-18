import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumber = 1;
  int rightNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftNumber.png'),
              onPressed: () {
                setState(() {
                  leftNumber = Random().nextInt(6) + 1;
                  rightNumber = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightNumber.png'),
              onPressed: () {
                setState(() {
                  leftNumber = Random().nextInt(6) + 1;
                  rightNumber = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
