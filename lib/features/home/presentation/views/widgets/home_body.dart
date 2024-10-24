import 'package:chat/features/chat/presentation/views/chat_view.dart';
import 'package:chat/features/home/presentation/views/widgets/appbar_widget.dart';
import 'package:chat/features/home/presentation/views/widgets/bottomBar_widget.dart';
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(),
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
