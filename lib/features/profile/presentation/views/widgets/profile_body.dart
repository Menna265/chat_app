import 'package:chat/core/shared_widgets/custom_button.dart';
import 'package:chat/core/shared_widgets/default_text.dart';
import 'package:chat/features/profile/presentation/views/widgets/appbar_profile.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/asset_images.dart';
import '../../../../../core/themes/colors.dart';

class ProfileBody extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.basic,
      appBar: AppBarProfile(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Divider(),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(AssetImages.me),
                  radius: 60,
                ),
                Positioned(
                    bottom: 0,
                    right: 9,
                    child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorApp.primaryColor,
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        )))
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(),
          SizedBox(
            height: 15,
          ),
          Text(
            "Name",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
          ),
          SizedBox(
            height: 15,
          ),
          defaultText(
            keyboardType: TextInputType.name,
            controller: nameController,
            label: "Marwan Ali",
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Phone",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
          ),
          SizedBox(
            height: 15,
          ),
          defaultText(
            keyboardType: TextInputType.name,
            controller: nameController,
            label: "+011257277329",
          ),
          SizedBox(
            height: 50,
          ),
          CustomButton(
            text: "Save Profile",
            color: Colors.white,
            func: () {},
            prefix: Icons.save,
          )
        ]),
      ),
    );
  }
}
