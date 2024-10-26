import 'package:chat/features/profile/presentation/views/widgets/setting_body.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  static const String routeName = "setting-view";

  SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SettingBody(),
      ),
    );
  }
}
