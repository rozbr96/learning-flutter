import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/forms/login.dart';
import 'package:learning_flutter/widgets/texts/sign_up.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        LoginForm(),
        SignUpText(),
      ],
    );
  }
}
