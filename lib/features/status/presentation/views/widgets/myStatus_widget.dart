import 'package:chat/core/constants/asset_images.dart';
import 'package:chat/core/themes/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/colors.dart';

class MystatusWidget extends StatelessWidget {
  const MystatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: Stack(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(AssetImages.me),
              radius: 30,
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Icon(
                  Icons.add_circle_outline,
                  color: ColorApp.primaryColor,
                )),
          ],
        ),
        title: Text(
          "My Status",
          style: StyleApp.textStyle24.copyWith(fontSize: 16),
        ),
        subtitle: Text("Tap to add status updates",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
