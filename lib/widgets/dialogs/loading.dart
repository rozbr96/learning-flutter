import 'package:flutter/material.dart';
import 'package:learning_flutter/utils/colors.dart';

class LoadingDialog extends Dialog {
  const LoadingDialog({super.key})
      : super.fullscreen(
          backgroundColor: Colors.transparent,
          child: const Stack(
            children: [
              Center(
                child: Text(
                  'Loading...',
                  style: TextStyle(
                    color: primaryBackgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Center(
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
