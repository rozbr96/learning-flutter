import 'package:flutter/material.dart';
import 'package:learning_flutter/models/login.dart';
import 'package:learning_flutter/widgets/inputs/base.dart';
import 'package:provider/provider.dart';

class _EmailInputState extends BaseInputState {
  _EmailInputState() : super(label: 'Email', hintText: 'Email');

  @override
  void initState() {
    super.initState();

    onChanged = (value) {
      Provider.of<LoginModel>(
        super.context,
        listen: false,
      ).setEmail(value);
    };
  }
}

class EmailInput extends StatefulWidget {
  const EmailInput({super.key});

  @override
  State createState() => _EmailInputState();
}
