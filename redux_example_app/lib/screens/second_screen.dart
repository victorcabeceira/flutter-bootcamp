import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:redux_example_app/actions/actions.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Data number 2:'),
            StoreConnector<int, String>(
              converter: (store) => store.state.toString(),
              builder: (context, value) => Text(
                '$value',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            StoreConnector<int, VoidCallback>(
              converter: (store) {
                return () => store.dispatch(DecrementCounter);
              },
              builder: (context, callback) => RaisedButton(
                color: Colors.red,
                child: Text('Decrement'),
                onPressed: () {
                  //Navigte to Screen 2
                  print('#Increment $context');
                  callback();
                },
              ),
            ),
            StoreConnector<int, VoidCallback>(
              converter: (store) {
                return () => store.dispatch(IncrementCounter);
              },
              builder: (context, callback) => RaisedButton(
                color: Colors.green,
                child: Text('Increment'),
                onPressed: () => callback(),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('Go To Screen 2'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
