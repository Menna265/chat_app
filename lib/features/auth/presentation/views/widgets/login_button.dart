import 'package:chat/core/shared_widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onSuccess;

  LoginButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.onSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton(
        text: "Log In",
        func: () {
          if (!emailController.text.contains('@')) {
            displayToastMssg('Email address is not valid', context);
          } else if (passwordController.text.isEmpty) {
            displayToastMssg('Password is mandatory', context);
          } else {
            onSuccess();
          }
        },
      ),
    );
  }
}

displayToastMssg(String msg, BuildContext context) {
  Fluttertoast.showToast(msg: msg);
}
