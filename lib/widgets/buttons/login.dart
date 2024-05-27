import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: const ButtonStyle(
        fixedSize: MaterialStatePropertyAll(Size.fromHeight(45)),
        backgroundColor: MaterialStatePropertyAll(secondaryBackgroundColor),
        foregroundColor: MaterialStatePropertyAll(Colors.black),
      ),
      child: const Text(
        'Log In',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
