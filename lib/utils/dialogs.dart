import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/dialogs/error.dart';
import 'package:learning_flutter/widgets/dialogs/loading.dart';

dismissDialog(BuildContext context) {
  return Navigator.of(context)
      .popUntil((route) => !route.settings.name!.endsWith('_dialog'));
}

showErrorDialog(BuildContext context, {String? message}) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => ErrorDialog(message: message, context: context),
    routeSettings: const RouteSettings(name: 'error_dialog'),
  );
}

showLoadingDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => const LoadingDialog(),
    routeSettings: const RouteSettings(name: 'loading_dialog'),
  );
}
