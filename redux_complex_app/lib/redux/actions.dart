import 'package:redux_complex_app/models/models.dart';

class AddItemAction {
  static int _id = 0;
  final String item;

  // Creates a new item with the item passed and iterate the id
  AddItemAction(this.item) {
    _id++;
  }

  int get id => _id;
}

class RemoveItemAction {
  final Item item;

  RemoveItemAction(this.item);
}

class RemoveItemsAction {}
