import 'package:flutter/material.dart';

import 'package:todoey_app/widgets/index.dart';
import 'package:todoey_app/models/index.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  void checkboxCallBack(bool checkboxState, int index) {
    setState(() {
      widget.tasks[index].toggleDone();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallBack: (bool checkboxState) {
              checkboxCallBack(checkboxState, index);
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
