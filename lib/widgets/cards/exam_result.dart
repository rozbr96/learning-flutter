import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/models/exam.dart';
import 'package:learning_flutter/models/exam_result.dart';
import 'package:learning_flutter/utils/colors.dart';

class ExamResultCard extends StatelessWidget {
  final Exam exam;
  final ExamResult result;

  const ExamResultCard({super.key, required this.exam, required this.result});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: const BoxDecoration(
          color: tertiaryBackgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          AppLocalizations.of(context)!.reference,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          AppLocalizations.of(context)!.result,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(result.test_type.name),
                        Text(result.test_type.reference),
                        Text(result.result),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(exam.doctor.name),
                    Text(exam.doctor.crm),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
