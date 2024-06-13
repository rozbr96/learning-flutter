import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/utils/colors.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppLocalizations.of(context)!.login,
          style: const TextStyle(
            color: tertiaryForegroundColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          AppLocalizations.of(context)!.welcomeBack,
          style: const TextStyle(color: tertiaryForegroundColor),
        ),
      ],
    );
  }
}
