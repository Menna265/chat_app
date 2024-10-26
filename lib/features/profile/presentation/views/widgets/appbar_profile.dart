import 'package:chat/core/themes/styles.dart';
import 'package:chat/features/home/presentation/views/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/colors.dart';

class AppBarProfile extends StatelessWidget implements PreferredSizeWidget {
  const AppBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorApp.basic,
      title: Text(
        "Profile",
        style: StyleApp.textStyle24,
      ),
      leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: ColorApp.primaryColor,
          )),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
