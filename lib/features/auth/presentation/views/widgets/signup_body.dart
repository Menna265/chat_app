import 'package:chat/features/auth/presentation/views/login_title.dart';
import 'package:chat/features/auth/presentation/views/widgets/email_widget.dart';
import 'package:chat/features/auth/presentation/views/widgets/login_row.dart';
import 'package:chat/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chat/features/auth/presentation/views/widgets/name_field.dart';
import 'package:chat/features/auth/presentation/views/widgets/password_widget.dart';
import 'package:chat/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:chat/features/auth/presentation/views/widgets/signup_button.dart';
import 'package:chat/features/home/presentation/views/home_screen.dart';
import 'package:flutter/material.dart';

class SignupBody extends StatefulWidget {
  SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            LogoWidget(),
            LoginTitle(
              text: 'Register To New Account',
            ),
            SizedBox(
              height: 5,
            ),
            NameField(
              nameController: nameController,
            ),
            SizedBox(
              height: 5,
            ),
            EmailWidget(emailController: emailController),
            SizedBox(
              height: 5,
            ),
            PhoneField(
              phoneController: phoneController,
            ),
            SizedBox(
              height: 5,
            ),
            PasswordWidget(
                passwordController: passwordController,
                isPasswordVisibility: isPasswordVisible,
                text: "Password is too short",
                toogleVisibility: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                }),
            SizedBox(
              height: 20,
            ),
            SignupButton(
              nameController: nameController,
              emailController: emailController,
              phoneController: phoneController,
              passwordController: passwordController,
              onSuccess: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            LoginRow(),
          ],
        ),
      ),
    );
  }
}
