import 'package:chat/core/shared_widgets/default_text.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  final TextEditingController phoneController;

  PhoneField({super.key, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return defaultText(
      keyboardType: TextInputType.phone,
      label: "Enter Your Phone",
      hint: 'Your Phone',
      prefix: Icons.phone_android_outlined,
      controller: phoneController,
      validate: (value) {
        if (value!.isempty) {
          return "Phone must not be empty";
        } else {
          return null;
        }
      },
    );
  }
}
