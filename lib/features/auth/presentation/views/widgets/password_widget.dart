import 'package:chat/core/shared_widgets/default_text.dart';
import 'package:flutter/material.dart';

class PasswordWidget extends StatelessWidget {
  final TextEditingController passwordController;
  final bool isPasswordVisibility;
  final VoidCallback toogleVisibility;
  final String text;

  const PasswordWidget(
      {super.key,
      required this.passwordController,
      required this.isPasswordVisibility,
      required this.toogleVisibility,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return defaultText(
        keyboardType: TextInputType.visiblePassword,
        label: "Enter your Password",
        hint: "your Password",
        controller: passwordController,
        isObscure: !isPasswordVisibility,
        prefix: Icons.lock,
        suffix: isPasswordVisibility
            ? Icons.visibility
            : Icons.visibility_off_sharp,
        pressed: toogleVisibility,
        validate: (value) {
          if (value!.isEmpty) {
            return text;
          } else {
            return null;
          }
        });
  }
}
