import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey_app/screens/index.dart';
import 'package:todoey_app/models/index.dart';

import 'models/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
