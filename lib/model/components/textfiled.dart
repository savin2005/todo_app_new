import 'package:flutter/material.dart';
import 'package:todo_app_new/model/utils/appcolor.dart';
import 'package:todo_app_new/model/utils/appservices.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;

  final String hintText;
  final Icon? prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final double radius;
  final Widget? icon;
  final TextStyle? hintstyle;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.prefixIcon,
    this.radius = 12,
    this.icon,
    this.hintstyle,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppServices.fs16white,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.contianercolor,
        hintStyle: hintstyle,
        suffixIcon: icon != null ? icon : null,
        hintText: hintText,
        prefixIcon: prefixIcon != null ? prefixIcon : null,
        border: InputBorder.none,
      ),
    );
  }
}
