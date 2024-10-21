import 'package:chat/core/themes/styles.dart';
import 'package:flutter/material.dart';

import '../signup_view.dart';

class RegisterRow extends StatelessWidget {
  RegisterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account?',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignupView(),
              ),
            );
          },
          child: Text(
            "Register here",
            style: StyleApp.textStyle15,
          ),
        ),
      ],
    );
  }
}
