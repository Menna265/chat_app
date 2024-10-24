import 'package:chat/core/constants/asset_images.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/styles.dart';

class ViewedupdateWidget extends StatelessWidget {
  const ViewedupdateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey, width: 2.5)),
              child: CircleAvatar(
                backgroundImage: AssetImage(AssetImages.me),
                radius: 30,
              ),
            ),
            title: Text(
              "Marwan Ali",
              style: StyleApp.textStyle24.copyWith(fontSize: 16),
            ),
            subtitle: Text(
              "Today, 12:00 PM",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          );
        });
  }
}
