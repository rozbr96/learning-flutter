import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/colors.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Login',
          style: TextStyle(
            color: tertiaryForegroundColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Welcome back!',
          style: TextStyle(
            color: tertiaryForegroundColor,
          ),
        ),
      ],
    );
  }
}
