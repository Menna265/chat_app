import 'package:chat/features/home/presentation/views/widgets/appbar_widget.dart';
import 'package:chat/features/home/presentation/views/widgets/bottomBar_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/colors.dart';

class HomeBody extends StatefulWidget {
  HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int index = 0;

  // final pages=[
  //   LoginView(),
  //   SignupView(),
  //   HomeScreen(),
  //
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorApp.basic,
        appBar: AppBarWidget(),
        bottomNavigationBar: BottomBarWidget(
          currentIndex: index,
          onTap: (int value) {
            index = value;
            setState(() {});
          },
        ),
        // body: ListviewWidget(),
        //   body: pages[index],
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
