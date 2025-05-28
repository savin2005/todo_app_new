import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final double paddingVertical;
  final double paddingHorizontal;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    this.borderRadius = 12.0,
    this.paddingVertical = 14.0,
    this.paddingHorizontal = 24.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(
            vertical: paddingVertical,
            horizontal: paddingHorizontal,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: text);
  }
}

class CustomTextButton extends StatelessWidget {
  final Widget text;
  final VoidCallback onPressed;
  final Color? color;
  final Color textColor;
  final double borderRadius;
  final BorderSide? borderSide;
  final double paddingVertical;
  final double paddingHorizontal;

  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
    this.borderSide,
    this.textColor = Colors.white,
    this.borderRadius = 12.0,
    this.paddingVertical = 14.0,
    this.paddingHorizontal = 24.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          side: borderSide,
          backgroundColor: color,
          padding: EdgeInsets.symmetric(
            vertical: paddingVertical,
            horizontal: paddingHorizontal,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: text);
  }
}
