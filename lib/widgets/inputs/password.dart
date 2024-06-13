import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/models/provider/login.dart';
import 'package:learning_flutter/widgets/inputs/base.dart';
import 'package:provider/provider.dart';

class _PasswordInputstate extends BaseInputState {
  _PasswordInputstate() : super(obscureText: true);

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

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    label = hintText = AppLocalizations.of(context)!.password;
  }
}

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<StatefulWidget> createState() => _PasswordInputstate();
}
