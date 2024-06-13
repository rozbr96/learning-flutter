import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/utils/colors.dart';

class RecoveryButton extends StatelessWidget {
  const RecoveryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        AppLocalizations.of(context)!.passwordRecovery,
        style: const TextStyle(
          color: tertiaryForegroundColor,
        ),
      ),
    );
  }
}
