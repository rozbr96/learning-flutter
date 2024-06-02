import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learning_flutter/models/provider/login.dart';
import 'package:learning_flutter/utils/colors.dart';
import 'package:learning_flutter/utils/constants.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        Map<String, String> loginData =
            Provider.of<LoginModel>(context, listen: false).getData();

        http
            .post(Uri.parse(API_LOGIN_ENDPOINT), body: loginData)
            .then((value) => print(value.body));
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
