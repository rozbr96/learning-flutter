import 'package:flutter/material.dart';
import 'package:learning_flutter/models/provider/exam.dart';
import 'package:learning_flutter/models/provider/exams.dart';
import 'package:learning_flutter/models/provider/login.dart';
import 'package:learning_flutter/screens/login.dart';
import 'package:provider/provider.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginModel>(create: (_) => LoginModel()),
        Provider<ExamsModel>(create: (_) => ExamsModel()),
        Provider<ExamModel>(create: (_) => ExamModel()),
      ],
      child: const MaterialApp(
        home: LoginScreen(),
      ),
    );
  }
}
