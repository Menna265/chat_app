import 'package:chat/features/chat/presentation/views/widgets/chat_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/colors.dart';

class ChatView extends StatelessWidget {
  static const String routeName = "chat-view";

  ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorApp.basic,
        body: ChatBody(),
      ),
    );
  }
}
