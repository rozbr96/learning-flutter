import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/colors.dart';

class HomeTitleBar extends StatelessWidget {
  const HomeTitleBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'My Exams',
      style: TextStyle(
        color: primaryForegroundColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
