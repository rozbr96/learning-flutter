import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/colors.dart';

class BaseInputState extends State {
  String label;
  String hintText;
  final bool obscureText;
  Function(String)? onChanged;

  BaseInputState({
    this.onChanged,
    this.label = '',
    this.hintText = '',
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: obscureText,
      style: const TextStyle(
        color: primaryForegroundColor,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        label: Text(
          label,
          style: const TextStyle(
            color: primaryForegroundColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: primaryForegroundColor,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        filled: true,
        fillColor: tertiaryBackgroundColor,
      ),
    );
  }
}
