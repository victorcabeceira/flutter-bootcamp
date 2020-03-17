import 'package:redux_example_app/actions/actions.dart';

export 'second_reducer.dart';

int counterReducer(int state, dynamic action) {
  if (action == IncrementCounter) {
    return state + 1;
  }

  if (action == DecrementCounter) {
    return state - 1;
  }

  return state;
}
