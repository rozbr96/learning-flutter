import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/models/exam.dart';
import 'package:learning_flutter/utils/colors.dart';

class ExamDetailsHeaderInfo extends StatelessWidget {
  final Exam exam;

  const ExamDetailsHeaderInfo({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exam.id.toString(),
                style: const TextStyle(
                  color: primaryForegroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                exam.lab.name,
                style: const TextStyle(
                  color: primaryBackgroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Text(
            AppLocalizations.of(context)!.date(exam.date),
            style: const TextStyle(
              color: primaryBackgroundColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
