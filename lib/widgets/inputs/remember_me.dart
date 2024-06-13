import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/utils/colors.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (checked) {},
          fillColor: const MaterialStatePropertyAll(tertiaryBackgroundColor),
          checkColor: secondaryForegroundColor,
        ),
        Text(
          AppLocalizations.of(context)!.rememberMe,
          style: const TextStyle(
            color: tertiaryForegroundColor,
          ),
        ),
      ],
    );
  }
}
