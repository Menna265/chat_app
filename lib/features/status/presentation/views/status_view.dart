import 'package:chat/features/status/presentation/views/widgets/status_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/colors.dart';

class StatusView extends StatelessWidget {
  static const String routeName = "status-view";

  StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorApp.basic,
      body: StatusBody(),
    ));
  }
}
