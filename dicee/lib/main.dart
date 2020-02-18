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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Image.asset('images/dice1.png'),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Image.asset('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
