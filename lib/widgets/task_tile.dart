import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../models/task.dart';
import '../controllers/task_controller.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final TaskController taskController = Get.find();

  TaskTile({required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.title),
      subtitle: Text(task.description),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () => taskController.removeTask(task.id),
      ),
    );
  }
}
