import 'package:flutter/foundation.dart';

/*
  A model of the Items that are going to be added and removed from the application
 */
class Item {
  final int id;
  final String body;

  Item({
    @required this.id,
    @required this.body,
  });

  // Redux way of doing things - Immutable state
  Item copyWith({int id, String body}) {
    return Item(
      id: id ?? this.id,
      body: body ?? this.body,
    );
  }
}

/* Represents the entire app state */
class AppState {
  final List<Item> items;

  AppState({@required this.items});

  /* Named constructor that make a new empty state, that is immutable */
  AppState.initialState() : items = List.unmodifiable(<Item>[]);
}
