import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/utils/colors.dart';

class HomeTitleBar extends StatelessWidget {
  const HomeTitleBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.myExams,
      style: const TextStyle(
        color: primaryForegroundColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
