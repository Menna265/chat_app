import 'package:chat/core/shared_widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignupButton extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final VoidCallback onSuccess;

  SignupButton(
      {super.key,
      required this.nameController,
      required this.emailController,
      required this.phoneController,
      required this.passwordController,
      required this.onSuccess});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Sign Up',
      func: () {
        if (nameController.text.length < 5) {
          displayToastMssg("name must be at least 4 characters", context);
        } else if (!emailController.text.contains('@')) {
          displayToastMssg("Email address isn't valid", context);
        } else if (phoneController.text.isEmpty) {
          displayToastMssg("Phone number is mandatory", context);
        } else if (passwordController.text.length < 8) {
          displayToastMssg("Password must be at least 8 characters", context);
        } else {
          onSuccess();
        }
      },
    );
  }
}

void displayToastMssg(String msg, BuildContext context) {
  Fluttertoast.showToast(msg: msg);
}
