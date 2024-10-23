import 'package:chat/features/auth/presentation/views/widgets/login_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/colors.dart';

class LoginView extends StatelessWidget {
  static const String routeName = "login-view";

  @override
  Widget build(BuildContext context) {
    // safa area mfesh appbar lscaffod
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorApp.basic,
        body: LoginBody(),
      ),
    );
  }
}
