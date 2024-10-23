import 'package:chat/core/themes/styles.dart';
import 'package:flutter/widgets.dart';

class LoginTitle extends StatelessWidget {
  final String text;

  LoginTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: StyleApp.textStyle24
          .copyWith(fontSize: 24, fontWeight: FontWeight.w700),
    );
  }
}
