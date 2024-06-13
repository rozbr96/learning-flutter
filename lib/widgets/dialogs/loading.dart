import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/utils/colors.dart';

class LoadingDialog extends Dialog {
  final BuildContext context;

  LoadingDialog({super.key, required this.context})
      : super.fullscreen(
          backgroundColor: Colors.transparent,
          child: Stack(
            children: [
              Center(
                child: Text(
                  AppLocalizations.of(context)!.loading,
                  style: const TextStyle(
                    color: primaryBackgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              const Center(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: CircularProgressIndicator(
                    color: primaryBackgroundColor,
                  ),
                ),
              )
            ],
          ),
        );
}
