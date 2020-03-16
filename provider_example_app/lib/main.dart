import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_example_app/models/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                Provider.of<CounterData>(context).counter.toString(),
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
        floatingActionButton: Consumer<CounterData>(
          builder: (context, counterData, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () => counterData.decrementCounter(),
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () => counterData.incrementCounter(),
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
              ],
            );
          },
        ));
  }
}
