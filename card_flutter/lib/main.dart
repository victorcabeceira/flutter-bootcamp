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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/victor.jpg'),
            ),
            Text(
              'Victor Cabeceira',
              style: TextStyle(
                  fontSize: 40, color: Colors.white, fontFamily: 'Sriracha'),
            ),
            Text(
              'React, React Native and Flutter developer',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                letterSpacing: 2.5,
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    size: 20,
                    color: Colors.blueGrey.shade700,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '+55 61 982 252 227',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey.shade700,
                        fontFamily: 'Montserrat'),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.blueGrey.shade700,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'victorfgcabeceira@gmail.com',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey.shade700,
                          fontFamily: 'Montserrat'),
                    ),
                  ],
                )),
          ],
        )),
      ),
    );
  }
}
