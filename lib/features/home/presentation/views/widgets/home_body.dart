import 'package:chat/features/call/presentation/views/call_view.dart';
import 'package:chat/features/chat/presentation/views/chat_view.dart';
import 'package:chat/features/home/presentation/views/widgets/appbar_widget.dart';
import 'package:chat/features/home/presentation/views/widgets/bottomBar_widget.dart';
import 'package:chat/features/profile/presentation/views/new_group_view.dart';
import 'package:chat/features/profile/presentation/views/profile_view.dart';
import 'package:chat/features/profile/presentation/views/widgets/setting_body.dart';
import 'package:chat/features/status/presentation/views/status_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/colors.dart';

class HomeBody extends StatefulWidget {
  HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int index = 0;
  final pages = [
    ChatView(),
    StatusView(),
    CallView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          onSelected: (int value) {
            setState(() {
              if (value == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileView()));
              } else if (value == 2) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewGroupView()));
              } else if (value == 3) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingBody()));
              }
            });
          },
        ),
        bottomNavigationBar: BottomBarWidget(
          currentIndex: index,
          onTap: (int value) {
            index = value;
            setState(() {});
          },
        ),
        body: pages[index],
        floatingActionButton: FloatingActionButton(
          backgroundColor: ColorApp.primaryColor,
          onPressed: () {},
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
        ));
  }
}
