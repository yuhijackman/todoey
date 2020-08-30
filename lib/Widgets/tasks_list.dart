import 'package:flutter/material.dart';
import 'package:todoeyflutter/Widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/Models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTile(
                task: task,
                checkboxCallback: () {
                  taskData.updateTask(task);
                },
                longtapCallback: () {
                  taskData.deleteTask(task);
                }
              );
            },
            itemCount: taskData.taskCount);
      },
    );
  }
}
