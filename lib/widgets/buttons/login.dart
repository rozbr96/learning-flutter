import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learning_flutter/models/provider/exams.dart';
import 'package:learning_flutter/models/provider/login.dart';
import 'package:learning_flutter/screens/home.dart';
import 'package:learning_flutter/utils/colors.dart';
import 'package:learning_flutter/utils/constants.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        Map<String, String> loginData = context.read<LoginModel>().getData();

        http
            .post(Uri.parse(API_LOGIN_ENDPOINT), body: loginData)
            .then((response) {
          if (response.statusCode == 200) {
            http.get(Uri.parse(API_EXAMS_ENDPOINT), headers: {
              'uid': response.headers['uid']!,
              'client': response.headers['client']!,
              'access-token': response.headers['access-token']!,
            }).then((response) {
              context
                  .read<ExamsModel>()
                  .setExamsFromJSON(jsonDecode(response.body));

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            });
          }
        });
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
