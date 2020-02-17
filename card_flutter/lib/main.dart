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
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blueGrey[100],
              backgroundImage: AssetImage('images/victor.jpg'),
            ),
            Text(
              'Victor Cabeceira',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.blueGrey[100],
                  fontFamily: 'Sriracha'),
            ),
            Text(
              'React, React Native and Flutter developer',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey[100],
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                letterSpacing: 2.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.blueGrey[300],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 25,
                    color: Colors.blueGrey.shade700,
                  ),
                  title: Text(
                    '+55 61 982 252 227',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey.shade700,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 25,
                    color: Colors.blueGrey.shade700,
                  ),
                  title: Text(
                    'victorfgcabeceira@gmail.com',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey.shade700,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
