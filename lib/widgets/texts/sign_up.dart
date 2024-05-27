import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/colors.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return const InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Does not have an acccount?',
            style: TextStyle(color: tertiaryForegroundColor),
          ),
          SizedBox(width: 10),
          Text(
            'Sign up',
            style: TextStyle(
              color: secondaryForegroundColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
