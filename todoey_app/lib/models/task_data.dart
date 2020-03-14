import 'package:flutter/foundation.dart';

import 'package:todoey_app/models/index.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Create your first to do!'),
    Task(name: 'Create your second to do!'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
