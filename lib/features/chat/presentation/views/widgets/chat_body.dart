import 'package:chat/core/themes/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/colors.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    radius: 30,
                  ),
                  title: Text(
                    "rowan",
                    style: StyleApp.textStyle24.copyWith(fontSize: 17),
                  ),
                  subtitle: Text("# 0101112543"),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("12:00 PM"),
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: ColorApp.primaryColor,
                        radius: 15,
                        child: Text(
                          "2",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
