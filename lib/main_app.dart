import 'package:flutter/material.dart';
import 'package:learning_flutter/screens/login.dart';
import 'package:learning_flutter/utils/colors.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryBackgroundColor,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/login-bg.jpg'),
            ),
          ),
          child: const LoginScreen(),
        ),
      ),
    );
  }
}
