import 'package:flutter/material.dart';
import 'package:redux_example_app/screens/counter_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
