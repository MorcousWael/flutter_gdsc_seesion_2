import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_2/Constants/constants.dart';
import 'package:task_2/generated/assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;

  const CustomAppBar({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset(Assets.svgsGDSCLogo),
      title: const Text(
        TextConstants.addTaskTitle,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      actions: [SvgPicture.asset(Assets.svgsSettings)],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56);
}
