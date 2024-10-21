import 'package:chat/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/styles.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginView(),
              ),
            );
          },
          child: Text(
            "Login here",
            style: StyleApp.textStyle15,
          ),
        ),
      ],
    );
    ;
  }
}
