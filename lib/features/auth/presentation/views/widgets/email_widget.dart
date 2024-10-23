import 'package:chat/core/shared_widgets/default_text.dart';
import 'package:flutter/material.dart';

class EmailWidget extends StatelessWidget {
  final TextEditingController emailController;

  const EmailWidget({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return defaultText(
        label: "Enter Your Email",
        hint: "your email",
        keyboardType: TextInputType.emailAddress,
        prefix: Icons.email_outlined,
        controller: emailController,
        validate: (value) {
          if (value!.isEmpty) {
            return "Email must not be Empty";
          } else {
            return null;
          }
        });
  }
}
