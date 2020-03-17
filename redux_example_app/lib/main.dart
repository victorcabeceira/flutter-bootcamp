import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

// import reducers
import 'package:redux_example_app/reducers/reducers.dart';

import 'package:redux_example_app/screens/counter_screen.dart';
import 'package:redux_example_app/screens/second_screen.dart';

void main() {
  final store = Store<int>(counterReducer, initialState: 0);

  return runApp(MyReduxApp(store: store));
}

class MyReduxApp extends StatelessWidget {
  final Store<int> store;
  MyReduxApp({this.store});
  @override
  Widget build(BuildContext context) {
    return StoreProvider<int>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => CounterScreen(),
          '/second': (context) => SecondScreen(),
        },
        initialRoute: '/',
      ),
    );
  }
}
