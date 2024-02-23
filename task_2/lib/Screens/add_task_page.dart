import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset("lib/Assets/svgs/GDSCLogo.png"),
          title: const Text(
            Constants.addTaskTitle,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          actions: [SvgPicture.asset('lib/Assets/svgs/settings.svg')],
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                Constants.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              InputField(
                controller: _titleController,
                hintText: "Enter Task Title",
                validator: (String? input) =>
                    Validators.checkLengthValidator(input, 5),
                prefix: const Icon(Icons.type_specimen),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.check),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
