import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Constants/constants.dart';
import '../../../Constants/generated/assets.dart';
import '../../../util/validators.dart';
import '../../../widgets/input_field.dart';

class TaskSection extends StatelessWidget {
  final TextEditingController controller;
  const TaskSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          TextConstants.title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        InputField(
          controller: controller,
          hintText: "Enter Task Title",
          validator: (String? input) =>
              Validators.checkLengthValidator(input, 1),
          prefix: SvgPicture.asset(
            Assets.svgsTitle,
          ),
        ),
      ],
    );
  }
}
