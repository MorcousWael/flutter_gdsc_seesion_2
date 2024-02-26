import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_2/widgets/input_field.dart';

import '../../../Constants/generated/assets.dart';
import '../../../util/validators.dart';

class TodoSection extends StatelessWidget {
  final List<TextEditingController> controllers;
  final void Function(int) onRemove;
  const TodoSection({
    super.key,
    required this.controllers,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        for (int i = 0; i < controllers.length; i++) ...[
          InputField(
              controller: controllers[i],
              hintText: 'Todo ${i + 1}',
              prefix: SvgPicture.asset(Assets.svgsClipboard),
              suffix: i != 0
                  ? IconButton(
                      onPressed: () => onRemove(i),
                      icon: const Icon(
                        Icons.delete_rounded,
                        color: Colors.red,
                      ),
                    )
                  : null,
              validator: (String? input) =>
                  Validators.checkLengthValidator(input, 1))
        ]
      ],
    );
  }
}
