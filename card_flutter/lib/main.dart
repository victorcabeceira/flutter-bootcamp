import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[600],
        body: SafeArea(
            child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/victor.jpg'),
            ),
            Text(
              'Victor Cabeceira',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat'),
            ),
            Text(
              'React, React Native and Flutter developer',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2.5),
            ),
          ],
        )),
      ),
    );
  }
}
