// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:learning_flutter/models/login.dart';
import 'package:learning_flutter/widgets/inputs/base.dart';
import 'package:provider/provider.dart';

class PasswordInputstate extends BaseInputState {
  PasswordInputstate({
    required super.label,
    required super.hintText,
  });
}

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<StatefulWidget> createState() {
    var passwordInputState = PasswordInputstate(
      label: 'Password',
      hintText: 'Password',
    );

    passwordInputState.onChanged = (value) {
      Provider.of<LoginModel>(
        passwordInputState.context,
        listen: false,
      ).setPassword(value);
    };

    return passwordInputState;
  }
}
