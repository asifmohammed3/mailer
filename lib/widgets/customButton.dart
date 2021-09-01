import 'package:flutter/material.dart';

//for button with and without
class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  final Color buttonColor;
  final String buttonText;
  final Color buttonTextColor;
  final double buttonBorderRadius;
  final double fontSize;
  final EdgeInsetsGeometry padding;

  CustomButton({
    required this.onPressed,
    required this.buttonColor,
    required this.buttonTextColor,
    required this.buttonText,
    this.buttonBorderRadius=20,
    required this.fontSize,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          padding: MaterialStateProperty.all(padding),
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(buttonBorderRadius)))),
      child: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
