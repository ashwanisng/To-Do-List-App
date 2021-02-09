import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/task_data.dart';
import 'package:to_do_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.task.length,
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.task[index].name,
              isChecked: taskData.task[index].isDone,
              checkBoxCallBack: (currentCheckboxState) {
                // setState(() {
                //     widget.task[index].toggleDone();
                //     },
                // );
              },
            );
          },
        );
      },
    );
  }
}
