import 'package:chat/core/shared_widgets/default_text.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  final TextEditingController nameController;

  NameField({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return defaultText(
      keyboardType: TextInputType.name,
      prefix: Icons.person,
      controller: nameController,
      label: "Enter Your Name",
      hint: "Your Name",
      validate: (value) {
        if (value!.isempty) {
          return "Name must not be empty";
        } else {
          return null;
        }
      },
    );
  }
}
