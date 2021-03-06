import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function longPressCallBack;

  // TaskTile({this.taskTitle, this.isChecked});
  TaskTile({
    this.taskTitle,
    this.isChecked,
    this.checkboxCallBack,
    this.longPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: isChecked
            ? TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallBack,
        activeColor: Colors.lightBlueAccent,
      ),
      onLongPress: longPressCallBack,
    );
  }
}
