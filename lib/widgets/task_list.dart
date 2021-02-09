import 'package:flutter/material.dart';
import 'package:to_do_app/models/task.dart';
import 'package:to_do_app/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> task;
  TasksList(this.task);
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.task.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.task[index].name,
          isChecked: widget.task[index].isDone,
          checkBoxCallBack: (currentCheckboxState) {
            setState(
              () {
                widget.task[index].toggleDone();
              },
            );
          },
        );
      },
    );
  }
}
