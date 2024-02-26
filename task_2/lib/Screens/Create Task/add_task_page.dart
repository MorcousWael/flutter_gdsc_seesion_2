import 'package:flutter/material.dart';
import 'package:task_2/Model/todo.dart';
import 'package:task_2/Screens/Create%20Task/components/todos_section.dart';
import 'package:task_2/widgets/app_bar.dart';
import 'package:task_2/widgets/fab.dart';

import '../../Constants/constants.dart';
import 'components/add_todo_section.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final TextEditingController _titleController = TextEditingController();
  final List<TextEditingController> _todosControllers = [
    TextEditingController()
  ]; // One initial to-do

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(text: TextConstants.addTaskTitle),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TaskSection(
                  controller: _titleController,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Divider(
                    height: 2,
                    thickness: 2,
                  ),
                ),
                const Text(
                  TextConstants.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                TodoSection(
                    controllers: _todosControllers,
                    onRemove: (int index) {
                      setState(() {
                        _todosControllers.removeAt(index);
                      });
                    }),
                Center(
                  child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _todosControllers.add(TextEditingController());
                        });
                      },
                      icon: const Icon(Icons.add),
                      label: const Text("Add")),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: SizedBox(
            width: 80,
            height: 80,
            child: CustomFAB(
              formKey: _formKey,
              icon: const Icon(
                Icons.check_sharp,
                color: Colors.white,
                size: 40,
              ),
              todos: [
                for (var controller in _todosControllers)
                  Todo(todoName: controller.text)
              ],
              taskName: _titleController.text,
            )));
  }
}
