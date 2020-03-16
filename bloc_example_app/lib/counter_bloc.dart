import 'dart:async';

import 'counter_event.dart';

class CounterBloc {
  int _counter = 0;

  // Semelhante a uma caixa com 2 furos, 1 de entrada (input - sink) e outro de saída (output - stream)
  final _counterStateController = StreamController<int>();
  // private
  StreamSink<int> get _inCounter => _counterStateController.sink;

  // public - Estado, expondo apenas a stream que retorna o dado (output)
  Stream<int> get counter => _counterStateController.stream;

  // Só expõe um sink - a UI interage com este sink
  final _counterEventController = StreamController<CounterEvent>();
  // Para eventos, expondo apenas o sink, que é o input
  Sink<CounterEvent> get counterEventSink => _counterEventController.sink;

  // Escuta a saída e a cad anovo evento, ele é mapeado para um novo estado
  CounterBloc() {
    _counterEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(CounterEvent event) {
    if (event is IncrementEvent)
      _counter++;
    else
      _counter--;

    _inCounter.add(_counter);
  }

  // Fecha os controllers, desalocando recursos (evita memory leaks)
  void dispose() {
    _counterStateController.close();
    _counterEventController.close();
  }
}
