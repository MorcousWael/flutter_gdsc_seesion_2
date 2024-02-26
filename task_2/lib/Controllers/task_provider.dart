import 'package:flutter/foundation.dart';

import '../Model/task.dart';

class TaskProvider extends ChangeNotifier {
  final List<Task> _tasks = [];
  List<Task> get tasks => _tasks;

  TaskProvider() {
    _tasks.addAll(Task.mockUpTasks);
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void pinTask(Task task) {
    // Unpin any other pinned task
    for (var task in _tasks) {
      if (task.isPinned) {
        task.isPinned = false;
      }
    }

    task.isPinned = true;
    notifyListeners();
  }
}
