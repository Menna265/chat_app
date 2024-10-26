import 'package:chat/features/home/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/colors.dart';

class HomeView extends StatelessWidget {
  static String routeName = "home-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.basic,
      body: HomeBody(),
    );
  }
}
