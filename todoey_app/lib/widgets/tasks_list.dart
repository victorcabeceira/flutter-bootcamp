import 'package:flutter/material.dart';

import 'package:todoey_app/widgets/index.dart';
import 'package:todoey_app/models/index.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'first'),
    Task(name: 'second'),
    Task(name: 'third'),
  ];

  void checkboxCallBack(bool checkboxState, int index) {
    setState(() {
      tasks[index].toggleDone();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallBack: (bool checkboxState) {
              checkboxCallBack(checkboxState, index);
            });
      },
      itemCount: tasks.length,
    );
  }
}
