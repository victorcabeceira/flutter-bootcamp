import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(
          child: buildRow(),
        ),
      ),
    );
  }

  final descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2,
  );

  Widget buildRow() => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
              "https://images.unsplash.com/photo-1485451456034-3f9391c6f769?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: recipeColumns(),
          ),
        ],
      );

  Widget recipeColumns() => Column(
        children: <Widget>[
          Center(
            child: Text(
              "Nice sandwich",
              style: TextStyle(fontSize: 28),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Steps to be taken. Steps to be taken. Steps to be taken.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          recipeScore(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: recipeInformation(),
          ),
        ],
      );

  Widget recipeScore() => Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              recipeStars(),
              Text(
                "100 Reviews",
                style: descTextStyle,
              ),
            ],
          )
        ],
      );

  Widget recipeStars() => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.black),
        ],
      );

  Widget recipeInformation() => DefaultTextStyle.merge(
        style: descTextStyle,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                Text('PREP:'),
                Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                Text('COOK:'),
                Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                Text('FEEDS:'),
                Text('1-2'),
              ],
            ),
          ],
        ),
      );
}
