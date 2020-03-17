import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:redux_example_app/actions/actions.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times: '),
            StoreConnector<int, String>(
              converter: (store) => store.state.toString(),
              builder: (context, value) => Text(
                '$value',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          StoreConnector<int, VoidCallback>(
            converter: (store) {
              return () => store.dispatch(DecrementCounter);
            },
            builder: (context, callback) => FloatingActionButton(
              onPressed: callback,
              tooltip: 'Decrement',
              child: Icon(Icons.remove),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          StoreConnector<int, VoidCallback>(
            converter: (store) {
              return () => store.dispatch(IncrementCounter);
            },
            builder: (context, callback) => FloatingActionButton(
              onPressed: callback,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
