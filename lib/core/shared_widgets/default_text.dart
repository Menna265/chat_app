import 'package:flutter/material.dart';

Widget defaultText({
  TextEditingController? controller,
  // TextInputType type,
  FormFieldValidator? validate,
  IconData? prefix,
  Function()? pressed,
  Function()? tap,
  Function(String)? onChange,
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
      onChanged: onChange,
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
      ),
    );
