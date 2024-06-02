import 'package:flutter/material.dart';
import 'package:learning_flutter/screens/home.dart';
import 'package:learning_flutter/screens/login.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(home: HomeScreen());
  // Widget build(BuildContext context) => const MaterialApp(home: LoginScreen());
}
