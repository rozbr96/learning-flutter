// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:learning_flutter/models/login.dart';
import 'package:learning_flutter/widgets/inputs/base.dart';
import 'package:provider/provider.dart';

class EmailInputState extends BaseInputState {
  EmailInputState({
    required super.label,
    required super.hintText,
  });
}

class EmailInput extends StatefulWidget {
  const EmailInput({super.key});

  @override
  State createState() {
    var emailInputState = EmailInputState(
      label: 'Email',
      hintText: 'Email',
    );

    emailInputState.onChanged = (value) {
      Provider.of<LoginModel>(
        emailInputState.context,
        listen: false,
      ).setEmail(value);
    };

    return emailInputState;
  }
}
