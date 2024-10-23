import 'package:chat/features/auth/presentation/views/widgets/signup_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  static const String routeName = "signup-view";

  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SignupBody(),
      ),
    );
  }
}
