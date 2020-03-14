import 'dart:collection';
import 'package:flutter/foundation.dart';

import 'package:todoey_app/models/index.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Create your first to do!'),
    Task(name: 'Create your second to do!'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
