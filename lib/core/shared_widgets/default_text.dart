import 'package:flutter/material.dart';

import '../themes/colors.dart';

Widget defaultText({
  TextEditingController? controller,
  FormFieldValidator? validate,
  IconData? prefix,
  Function()? pressed,
  // Function()? tap,
  // Function(String)? onChange,
  bool isObscure = false,
  IconData? suffix,
  String? label,
  String? hint,
  bool? enable,
  required TextInputType keyboardType,
}) =>
    TextFormField(
      controller: controller,
      obscureText: isObscure,
      keyboardType: keyboardType,
      // onChanged: onChange,
      validator: validate,
      enabled: enable,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: pressed,
                icon: Icon(suffix),
              )
            : null,
        // errorBorder: OutlineInputBorder(
        //  borderSide: BorderSide(color: Colors.red)
        // ),
        // focusedErrorBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
        // ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorApp.primaryColor, width: 3.0),
        ),
      ),
    );
