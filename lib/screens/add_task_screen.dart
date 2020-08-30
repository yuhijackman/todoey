import 'package:flutter/material.dart';
import 'package:todoeyflutter/Widgets/top_round_card.dart';
import 'package:todoeyflutter/Models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/Models/task_data.dart';

class AddTaskScreen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _newTask;
    return Container(
      color: Color(0xff757575),
      child: TopRoundCard(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  _newTask = value;
                },
              ),
              SizedBox(
                height: 5.0
              ),
              FlatButton(
                onPressed: () {
                  context.read<TaskData>().add(Task(name: _newTask));
                  Navigator.pop(context); 
                },
                child: Text (
                   'Add',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ),
      )
    );
  }
}
