import 'package:chat/features/auth/presentation/views/login_title.dart';
import 'package:chat/features/auth/presentation/views/widgets/email_widget.dart';
import 'package:chat/features/auth/presentation/views/widgets/login_button.dart';
import 'package:chat/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chat/features/auth/presentation/views/widgets/password_widget.dart';
import 'package:chat/features/auth/presentation/views/widgets/register_row.dart';
import 'package:chat/features/home/presentation/views/home_screen.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isPasswordVisible = false;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            LogoWidget(),
            LoginTitle(
              text: 'Log in to your account',
            ),
            SizedBox(
              height: 25,
            ),
            EmailWidget(emailController: emailController),
            SizedBox(
              height: 25,
            ),
            PasswordWidget(
              passwordController: passwordController,
              isPasswordVisibility: isPasswordVisible,
              text: "Password Shouldn`t be empty",
              toogleVisibility: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            ),
            SizedBox(
              height: 40,
            ),
            LoginButton(
              emailController: emailController,
              passwordController: passwordController,
              onSuccess: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            SizedBox(
              height: 10,
            ),
            RegisterRow(),
          ],
        ),
      ),
    );
  }
}
