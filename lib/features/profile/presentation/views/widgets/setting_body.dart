import 'package:chat/features/profile/presentation/views/widgets/list_tile_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/colors.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorApp.basic,
        appBar: AppBar(
          backgroundColor: ColorApp.basic,
          title: Text("Settings"),
        ),
        body: Column(
          children: [
            Divider(),
            ListTileWidget(
              subText: "I am using WhatsApp",
              count: 1,
              icon: Icons.person,
            ),
            Divider(),
            ListTileWidget(
              subText: "Account",
              count: 1,
              icon: Icons.key,
              text: "Account",
            ),
            ListTileWidget(
                subText: "Privacy",
                count: 1,
                icon: Icons.lock,
                text: "Privacy"),
            ListTileWidget(
                subText: "Avatar", count: 1, icon: Icons.face, text: "Avatar"),
            ListTileWidget(
                subText: "Favourites",
                count: 1,
                icon: Icons.favorite_border,
                text: "Favourites"),
            ListTileWidget(
                subText: "Chats",
                count: 1,
                icon: Icons.chat_outlined,
                text: "Chats"),
            ListTileWidget(
                subText: "Notifications",
                count: 1,
                icon: Icons.notifications_none,
                text: "Notifications"),
            ListTileWidget(
              subText: "Help",
              count: 1,
              icon: Icons.help_outline,
              text: "Help",
            ),
          ],
        ));
  }
}
