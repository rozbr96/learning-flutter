import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/colors.dart';

class BaseInput extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;

  const BaseInput({
    super.key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
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
