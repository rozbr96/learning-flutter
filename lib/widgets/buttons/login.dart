import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/models/provider/login.dart';
import 'package:learning_flutter/screens/home.dart';
import 'package:learning_flutter/utils/api.dart';
import 'package:learning_flutter/utils/colors.dart';
import 'package:learning_flutter/utils/dialogs.dart';
import 'package:learning_flutter/utils/secure_storage.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        showLoadingDialog(context);

        Map<String, String> loginData = context.read<LoginModel>().getData();

        API.getInstance().login(loginData).then((loggedInData) {
          if (context.read<LoginModel>().shouldKeepConnected()) {
            SecureStorage.setLoggedInData(loggedInData);
          } else {
            SecureStorage.deleteLoggedInData();
          }

          dismissDialog(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        }).catchError((error) {
          dismissDialog(context);

          switch (error) {
            case AuthenticationError _:
              showErrorDialog(
                context,
                message: AppLocalizations.of(context)!.incorrectCredentials,
              );
              break;

            case ConnectionError _:
              showErrorDialog(
                context,
                message: AppLocalizations.of(context)!.connectionError,
              );
              break;

            default:
              showErrorDialog(
                context,
                message: AppLocalizations.of(context)!.error,
              );
          }
        });
      },
      style: const ButtonStyle(
        fixedSize: MaterialStatePropertyAll(Size.fromHeight(45)),
        backgroundColor: MaterialStatePropertyAll(secondaryBackgroundColor),
        foregroundColor: MaterialStatePropertyAll(Colors.black),
      ),
      child: Text(
        AppLocalizations.of(context)!.login,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
