import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/utils/dialogs.dart';

class ErrorDialog extends AlertDialog {
  final String? message;
  final BuildContext context;

  ErrorDialog({
    super.key,
    this.message,
    required this.context,
  }) : super(
          title: Row(
            children: [
              const Icon(Icons.error_sharp, color: Colors.red),
              Text(AppLocalizations.of(context)!.error,
                  style: const TextStyle(color: Colors.red)),
            ],
          ),
          content: Text(
            message ?? AppLocalizations.of(context)!.error,
            textAlign: TextAlign.center,
          ),
          actions: [
            TextButton(
              onPressed: () {
                dismissDialog(context);
              },
              child: Text(AppLocalizations.of(context)!.ok),
            ),
          ],
        );
}
