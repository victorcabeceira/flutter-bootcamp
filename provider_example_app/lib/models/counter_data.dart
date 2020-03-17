import 'package:flutter/foundation.dart';

class CounterData extends ChangeNotifier {
  int _counter = 0;

  int get counter {
    return _counter;
  }

  String get counterAsString {
    return _counter.toString();
  }

  void decrementCounter(int number) {
    print('#decrementCounter, argument number: $number');
    _counter--;
    notifyListeners();
  }

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
