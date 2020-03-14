import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey_app/widgets/index.dart';
import 'package:todoey_app/models/index.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallBack: (bool checkboxState) {
              taskData.updateTask(task);
            },
            longPressCallBack: () => taskData.deleteTask(task),
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
