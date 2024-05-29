import 'package:flutter/material.dart';
import 'package:learning_flutter/models/login.dart';
import 'package:learning_flutter/utils/colors.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        String email =
            Provider.of<LoginModel>(context, listen: false).getEmail();
        String password =
            Provider.of<LoginModel>(context, listen: false).getPassword();

        print({email, password});
      },
      style: const ButtonStyle(
        fixedSize: MaterialStatePropertyAll(Size.fromHeight(45)),
        backgroundColor: MaterialStatePropertyAll(secondaryBackgroundColor),
        foregroundColor: MaterialStatePropertyAll(Colors.black),
      ),
      child: const Text(
        'Log In',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
