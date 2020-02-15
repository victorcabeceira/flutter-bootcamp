import 'package:flutter/material.dart';

// Main function is the starting point for all Flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.cyan[800],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://pcacdn.azureedge.net/-/media/pn-np/ab/banff/WET4/visit/les10-top10/louise/LakeLouise-PaulZizka.jpg?modified=20170316185358'),
          ),
        ),
      ),
    ),
  );
}
