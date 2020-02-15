import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                height: 10,
                width: 20,
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              SizedBox(
                height: 10,
                width: 20,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Text('Container 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
