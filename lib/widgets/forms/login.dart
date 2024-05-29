import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learning_flutter/models/login.dart';
import 'package:learning_flutter/widgets/buttons/login.dart';
import 'package:learning_flutter/widgets/buttons/recovery.dart';
import 'package:learning_flutter/widgets/inputs/email.dart';
import 'package:learning_flutter/widgets/inputs/password.dart';
import 'package:learning_flutter/widgets/inputs/remember_me.dart';
import 'package:learning_flutter/widgets/texts/login_form_header.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.8,
      child: ChangeNotifierProvider(
        create: (context) => LoginModel(),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: LoginHeader(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: EmailInput(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: PasswordInput(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RememberMe(),
                  RecoveryButton(),
                ],
              ),
            ),
            FractionallySizedBox(
              widthFactor: 1,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: LoginButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
