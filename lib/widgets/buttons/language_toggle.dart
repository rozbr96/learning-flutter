import 'package:flutter/material.dart';
import 'package:learning_flutter/models/provider/locale.dart';
import 'package:provider/provider.dart';

class LanguageToggleButton extends StatelessWidget {
  const LanguageToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Provider.of<LocaleModel>(
          context,
          listen: false,
        ).changeLocale();
      },
      icon: CircleAvatar(
        backgroundImage: AssetImage(
          'assets/images/${Provider.of<LocaleModel>(context).getLocale()}.png',
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const CircleBorder()),
      ),
    );
  }
}
