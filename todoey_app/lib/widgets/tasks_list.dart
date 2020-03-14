import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey_app/widgets/index.dart';
import 'package:todoey_app/models/index.dart';

class TasksList extends StatelessWidget {
  void checkboxCallBack(bool checkboxState, int index) {
    // setState(() {
    //   widget.tasks[index].toggleDone();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallBack: (bool checkboxState) {
                checkboxCallBack(checkboxState, index);
              });
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
