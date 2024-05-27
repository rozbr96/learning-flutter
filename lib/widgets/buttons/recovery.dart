import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/colors.dart';

class RecoveryButton extends StatelessWidget {
  const RecoveryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'Password Recovery',
        style: TextStyle(
          color: tertiaryForegroundColor,
        ),
      ),
    );
  }
}
