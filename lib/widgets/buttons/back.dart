import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.keyboard_arrow_left),
      style: const ButtonStyle(
        iconColor: WidgetStatePropertyAll(primaryBackgroundColor),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
