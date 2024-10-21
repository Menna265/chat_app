import 'package:chat/core/themes/styles.dart';
import 'package:flutter/material.dart';

import '../themes/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.width,
    this.height = 43,
    this.fontSized,
    this.textColor,
    this.backgroundColor,
    this.borderRadius,
    required this.text,
    required this.func,
    this.isLoading = false,
    this.svgPicture,
  });

  final double? width;
  final double? height;
  final double? fontSized;
  final Color? textColor;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final String? text;
  final VoidCallback func;
  final bool isLoading;
  final Widget? svgPicture;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: func,
            style: ElevatedButton.styleFrom(
              alignment: Alignment.center,
              backgroundColor: ColorApp.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(24)),
              padding: EdgeInsets.symmetric(horizontal: 48, vertical: 12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: isLoading
                      ? CircularProgressIndicator()
                      : Text(text!, style: StyleApp.textStyle24),
                ),
                SizedBox(width: 15),
                if (svgPicture != null) ...{
                  svgPicture!,
                  // Render SVG only if it's provided // Add some spacing between SVG and text
                },
              ],
            )),
      ),
    );
  }
}
