import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/forms/login.dart';
import 'package:learning_flutter/widgets/texts/sign_up.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/login-bg.jpg'),
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            LoginForm(),
            SignUpText(),
          ],
        ),
      ),
    );
  }
}
