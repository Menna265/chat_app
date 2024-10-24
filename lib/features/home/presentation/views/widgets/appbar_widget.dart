import 'package:chat/core/themes/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

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
        Icon(Icons.more_vert),
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
