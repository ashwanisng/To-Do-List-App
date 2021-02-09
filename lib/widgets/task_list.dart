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
            final task = taskData.task[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallBack: (currentCheckboxState) {
                taskData.updateTask(task);
              },
              onLongaPressCallBack: () {
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
