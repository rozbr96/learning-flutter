import 'package:flutter/material.dart';
import 'package:learning_flutter/models/provider/login.dart';
import 'package:learning_flutter/widgets/inputs/base.dart';
import 'package:provider/provider.dart';

class _PasswordInputstate extends BaseInputState {
  _PasswordInputstate()
      : super(label: 'Password', hintText: 'Password', obscureText: true);

  @override
  void initState() {
    super.initState();

    onChanged = (value) {
      Provider.of<LoginModel>(
        super.context,
        listen: false,
      ).setPassword(value);
    };
  }
}

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<StatefulWidget> createState() => _PasswordInputstate();
}
