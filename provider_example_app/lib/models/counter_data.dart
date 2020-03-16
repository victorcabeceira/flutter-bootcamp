import 'package:flutter/foundation.dart';

class CounterData extends ChangeNotifier {
  int _counter = 0;

  int get counter {
    return _counter;
  }

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }
}
