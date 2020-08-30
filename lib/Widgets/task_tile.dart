import 'package:flutter/material.dart';
import 'package:todoeyflutter/Models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/Models/task_data.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function checkboxCallback;
  final Function longtapCallback;

  TaskTile({this.task, this.checkboxCallback, this.longtapCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longtapCallback,
        title: Text(task.name, style: TextStyle(decoration: task.isDone ? TextDecoration.lineThrough : null)),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: task.isDone,
          onChanged: (bool newValue) {
            checkboxCallback();
          },
        ) ,
    );
  }
}
