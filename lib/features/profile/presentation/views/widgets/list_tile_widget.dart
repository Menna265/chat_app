import 'package:flutter/material.dart';

import '../../../../../core/themes/styles.dart';

class ListTileWidget extends StatelessWidget {
  final String subText;

  final int count;
  final IconData icon;
  String text;

  ListTileWidget(
      {super.key,
      this.text = "rowan",
      required this.count,
      required this.icon,
      required this.subText});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: count,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(
              icon,
              color: Colors.white,
            ),
            radius: 30,
          ),
          title: Text(
            text,
            style: StyleApp.textStyle24.copyWith(fontSize: 17),
          ),
          subtitle: Text(subText),
        );
      },
    );
  }
}
