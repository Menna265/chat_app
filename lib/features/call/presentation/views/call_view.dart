import 'package:chat/features/call/presentation/views/widgets/call_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/colors.dart';

class CallView extends StatelessWidget {
  static const String routeName = "call-view";

  CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.basic,
      body: CallWidget(),
    );
  }
}
