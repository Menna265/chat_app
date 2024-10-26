import 'package:chat/core/themes/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final ValueChanged<int> onSelected;

  AppBarWidget({super.key, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorApp.basic,
      title: Text("WhatsUp", style: StyleApp.textStyle24),
      shape: RoundedRectangleBorder(
          side: BorderSide(
        color: Colors.grey,
        width: 0.5,
      )),
      actions: [
        Icon(Icons.search),
        SizedBox(
          width: 15,
        ),
        PopupMenuButton(
            color: ColorApp.basic,
            itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text("Profile"),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("New Group"),
                  ),
                  PopupMenuItem(value: 3, child: Text("Setting")),
                ],
            onSelected: onSelected,
            child: Icon(Icons.more_vert)),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
