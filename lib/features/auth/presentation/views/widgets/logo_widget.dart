import 'package:chat/core/constants/asset_images.dart';
import 'package:flutter/cupertino.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset(
          AssetImages.logo,
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
