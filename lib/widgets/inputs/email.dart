import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/models/provider/login.dart';
import 'package:learning_flutter/widgets/inputs/base.dart';
import 'package:provider/provider.dart';

class _EmailInputState extends BaseInputState {
  _EmailInputState();

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

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    label = hintText = AppLocalizations.of(context)!.email;
  }
}

class EmailInput extends StatefulWidget {
  const EmailInput({super.key});

  @override
  State createState() => _EmailInputState();
}
