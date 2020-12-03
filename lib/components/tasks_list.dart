import 'package:flutter/material.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return GestureDetector(
              onLongPress: () {
                taskData.deleteTask(index);
              },
              child: TaskTile(
                title: task.name,
                checked: task.isDone,
                callback: (newValue) {
                  return taskData.updateTask(task);
                },
              ),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
