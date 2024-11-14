import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import '../models/task.dart';

class TaskController extends GetxController {
  var tasks = <Task>[].obs;

  void addTask(String title, String description) {
    final id = Uuid().v4();
    tasks.add(Task(id: id, title: title, description: description));
  }

  void removeTask(String id) {
    tasks.removeWhere((task) => task.id == id);
  }
}
