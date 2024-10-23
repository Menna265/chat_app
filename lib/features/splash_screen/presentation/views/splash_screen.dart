import 'dart:async';

import 'package:chat/core/constants/asset_images.dart';
import 'package:chat/core/themes/colors.dart';
import 'package:chat/core/themes/styles.dart';
import 'package:chat/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash-screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.basic,
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Image.asset(AssetImages.logo),
            ],
          ),
          Text(
            "WhatsUp",
            style: StyleApp.textStyle15
                .copyWith(fontSize: 50, decoration: TextDecoration.none),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            "The best chat app of this century",
            style:
                StyleApp.textStyle24.copyWith(decoration: TextDecoration.none),
          ),
        ],
      ),
    );
  }
}
