import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/models/provider/login.dart';
import 'package:learning_flutter/utils/colors.dart';
import 'package:provider/provider.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: context.watch<LoginModel>().shouldKeepConnected(),
          onChanged: (checked) {
            context.read<LoginModel>().setRemember(checked ?? false);
          },
          fillColor: const WidgetStatePropertyAll(tertiaryBackgroundColor),
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
