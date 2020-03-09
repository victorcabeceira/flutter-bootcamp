import 'package:flutter/material.dart';
import 'pages/index.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: InputPage(),
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        accentColor: Color(0xFFEB1555),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) => ResultsPage(),
      },
      initialRoute: '/',
    );
  }
}
