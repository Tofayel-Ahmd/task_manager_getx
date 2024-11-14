import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'task_form_view.dart';
import '../controllers/task_controller.dart';
import '../widgets/task_tile.dart';

class TaskListView extends StatelessWidget {
  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => Get.to(() => TaskFormView()),
          ),
        ],
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: taskController.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(task: taskController.tasks[index]);
          },
        );
      }),
    );
  }
}
