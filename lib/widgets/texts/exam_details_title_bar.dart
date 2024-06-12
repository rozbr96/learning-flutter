import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/colors.dart';

class ExamDetailsTitleBar extends StatelessWidget {
  const ExamDetailsTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Exam Details',
      style: TextStyle(
        color: primaryForegroundColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
