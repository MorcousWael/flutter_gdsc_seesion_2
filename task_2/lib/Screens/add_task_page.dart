import 'package:flutter/material.dart';
import 'package:task_2/widgets/app_bar.dart';

import '../Constants/constants.dart';
import '../util/validators.dart';
import '../widgets/input_field.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _todoController = TextEditingController();
  final TextEditingController _todo2Controller = TextEditingController();
  final List<TextEditingController> controllers = [];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(text: TextConstants.addTaskTitle),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                TextConstants.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              InputField(
                controller: _titleController,
                hintText: "Enter Task Title",
                validator: (String? input) =>
                    Validators.checkLengthValidator(input, 5),
                prefix: const Icon(Icons.type_specimen),
              ),
              const Divider(
                height: 2,
                thickness: 2,
              ),
              const Text(
                TextConstants.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              InputField(
                controller: _todoController,
                hintText: "Todo 1",
                validator: (String? input) =>
                    Validators.checkLengthValidator(input, 5),
                prefix: const Icon(Icons.type_specimen),
              ),
              InputField(
                controller: _todo2Controller,
                hintText: "Todo 2",
                validator: (String? input) =>
                    Validators.checkLengthValidator(input, 5),
                prefix: const Icon(Icons.type_specimen),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.check),
          onPressed: () {
            // Navigator.pop(context);
            controllers.add(TextEditingController());
          },
        ));
  }
}
