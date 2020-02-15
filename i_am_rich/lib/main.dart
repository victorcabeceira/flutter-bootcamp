import 'package:flutter/material.dart';

// Main function is the starting point for all Flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[600],
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage(
                'images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
