import 'package:chat/core/themes/styles.dart';
import 'package:chat/features/profile/presentation/views/widgets/list_tile_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/colors.dart';

class NewGroupBody extends StatelessWidget {
  const NewGroupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.basic,
      appBar: AppBar(
        title: Text(
          "New group\nAdd members",
          style: StyleApp.textStyle15.copyWith(color: Colors.grey),
        ),
        backgroundColor: ColorApp.basic,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Frequently contacted"),
              SizedBox(
                height: 15,
              ),
              ListTileWidget(
                subText: "Available",
                count: 4,
                icon: Icons.person,
              ),
              SizedBox(
                height: 15,
              ),
              Text("Contacts on WhatsApp"),
              SizedBox(
                height: 15,
              ),
              ListTileWidget(
                subText: "Available",
                count: 4,
                icon: Icons.person,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
