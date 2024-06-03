import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/dialogs.dart';

class ErrorDialog extends AlertDialog {
  final String? message;
  final BuildContext context;

  ErrorDialog({
    super.key,
    this.message,
    required this.context,
  }) : super(
          title: const Row(
            children: [
              Icon(Icons.error_sharp, color: Colors.red),
              Text('Erro', style: TextStyle(color: Colors.red)),
            ],
          ),
          content: Text(
            message ?? 'Erro',
            textAlign: TextAlign.center,
          ),
          actions: [
            TextButton(
              onPressed: () {
                dismissDialog(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
}
