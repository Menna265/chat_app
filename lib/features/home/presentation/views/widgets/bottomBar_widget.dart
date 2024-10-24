import 'package:flutter/material.dart';

import '../../../../../core/themes/colors.dart';

class BottomBarWidget extends StatelessWidget {
  final ValueChanged<int> onTap;
  final int currentIndex;

  BottomBarWidget({super.key, required this.onTap, required this.currentIndex});

  // int index=0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: ColorApp.basic,
      selectedItemColor: ColorApp.primaryColor,
      unselectedItemColor: Colors.black,
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
            color: ColorApp.primaryColor,
          ),
          label: "Chats",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.tips_and_updates_rounded,
              color: ColorApp.primaryColor,
            ),
            label: "Status"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
              color: ColorApp.primaryColor,
            ),
            label: "Calls"),
      ],
    );
  }
}
