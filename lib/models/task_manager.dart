import 'package:flutter/foundation.dart';
import 'package:todoapp/models/task.dart';

class TaskManager extends ChangeNotifier {
  final List<Task> _tasks = [];
  List<Task> get tasks => _tasks;

  void add(final Task task) {
    _tasks.add(task);
    notifyListeners();

  }
  void updateTask(final Task task){
    task.isCompleted = !task.isCompleted;
    notifyListeners();
  }
  void deleteTask(final Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}
