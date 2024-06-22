import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learning_flutter/screens/home.dart';
import 'package:learning_flutter/utils/api.dart';
import 'package:learning_flutter/widgets/buttons/language_toggle.dart';
import 'package:learning_flutter/widgets/forms/login.dart';
import 'package:learning_flutter/widgets/texts/sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _LoginScreen extends StatelessWidget {
  const _LoginScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/login-bg.jpg'),
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            LanguageToggleButton(),
            LoginForm(),
            SignUpText(),
          ],
        ),
      ),
    );
  }
}

class _LoginScreenState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) => const _LoginScreen();

  @override
  void initState() {
    super.initState();

    SharedPreferences.getInstance().then((prefs) {
      String? stringfiedLoggedInData = prefs.getString('loggedInData');

      if (stringfiedLoggedInData != null) {
        Map<String, dynamic> loggedInData = jsonDecode(stringfiedLoggedInData);
        API.getInstance().setAuthorizationHeaders(loggedInData);

        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
      }
    });
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}
