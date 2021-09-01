import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final TextInputType keyBoardType;
  final Color enabledBorderColor;
  final double enabledBorderWidth;
  final Color focusedBorderColor;
  final double focusedBorderWidth;
  final Color disabledBorderColor;
  final double disabledBorderWidth;
  final String labelText;
  final Color labelTextColor;
  final double labelTextSize;
  String? helperText='';
  Color? helperTextColor=Colors.white54;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  TextInputField({
    required this.keyBoardType,
    required this.enabledBorderColor,
    required this.enabledBorderWidth,
    required this.disabledBorderColor,
    required this.disabledBorderWidth,
    required this.focusedBorderColor,
    required this.focusedBorderWidth,
    required this.labelText,
    this.helperText,
    required this.labelTextColor,
    required this.labelTextSize,
    this.helperTextColor,
    this.onChanged,
    this.controller,
    this.validator,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      validator: validator,

      keyboardType: keyBoardType,
      enabled: true,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: enabledBorderColor,
            width: enabledBorderWidth,
          ),
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: focusedBorderColor,
            width: focusedBorderWidth,
          ),
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),

        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: disabledBorderColor,
            width: disabledBorderWidth,
          ),
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),

        labelText: labelText,
        labelStyle: TextStyle(
          color: labelTextColor,
          fontSize: labelTextSize,
          fontWeight: FontWeight.bold,
        ),
        helperText: helperText,
        helperStyle: TextStyle(color: helperTextColor),
      ),
    );
  }
}
