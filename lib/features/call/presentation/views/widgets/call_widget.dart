import 'package:flutter/material.dart';

import '../../../../../core/constants/asset_images.dart';
import '../../../../../core/themes/colors.dart';
import '../../../../../core/themes/styles.dart';

class CallWidget extends StatelessWidget {
  const CallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      physics: BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(AssetImages.me),
            radius: 30,
          ),
          title: Text(
            "Menna",
            style: StyleApp.textStyle24.copyWith(fontSize: 16),
          ),
          subtitle: Text("Today, 8:22 PM",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
          trailing: Icon(
            Icons.phone,
            color: ColorApp.primaryColor,
          ),
        );
      },
    );
  }
}
