import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_2/Controllers/task_provider.dart';
import 'package:task_2/Model/task.dart';

import '../Constants/app_colors.dart';
import '../Model/todo.dart';

class CustomFAB extends StatelessWidget {
  final Widget? icon;
  final String taskName;
  final List<Todo> todos;
  final GlobalKey<FormState> formKey;
  const CustomFAB(
      {super.key,
      required this.icon,
      required this.taskName,
      required this.todos,
      required this.formKey});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.accentDark,
      shape: const CircleBorder(),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          var newTask = Task(taskName: taskName, todos: todos);
          context.read<TaskProvider>().addTask(newTask);
          Navigator.pop(context);
        }
      },
      child: icon,
    );
  }
}
