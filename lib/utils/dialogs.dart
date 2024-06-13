import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/dialogs/error.dart';
import 'package:learning_flutter/widgets/dialogs/loading.dart';

class DialogArguments {
  final bool isDialog;

  DialogArguments(this.isDialog);
}

class DialogRouteSettings extends RouteSettings {
  DialogRouteSettings() : super(arguments: DialogArguments(true));
}

dismissDialog(BuildContext context) {
  return Navigator.of(context).popUntil(
    (route) => route.settings.arguments is DialogArguments
        ? !(route.settings.arguments as DialogArguments).isDialog
        : true,
  );
}

showErrorDialog(BuildContext context, {String? message}) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => ErrorDialog(message: message, context: context),
    routeSettings: DialogRouteSettings(),
  );
}

showLoadingDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => LoadingDialog(context: context),
    routeSettings: DialogRouteSettings(),
  );
}
