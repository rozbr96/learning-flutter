import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/models/exam.dart';
import 'package:learning_flutter/models/provider/exam.dart';
import 'package:learning_flutter/screens/exam_details.dart';
import 'package:learning_flutter/utils/api.dart';
import 'package:learning_flutter/utils/colors.dart';
import 'package:learning_flutter/utils/dialogs.dart';
import 'package:provider/provider.dart';

class ExamBriefCard extends StatelessWidget {
  final Exam exam;

  const ExamBriefCard({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 400,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    exam.id.toString(),
                    style: const TextStyle(
                      color: primaryForegroundColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    exam.formattedDate(),
                    style: const TextStyle(
                      color: primaryForegroundColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      AppLocalizations.of(context)!.lab,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      exam.lab.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      AppLocalizations.of(context)!.doctor,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      exam.doctor.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilledButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(primaryForegroundColor),
                      ),
                      child: Text(AppLocalizations.of(context)!.create)),
                  FilledButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(primaryForegroundColor),
                      ),
                      child: Text(AppLocalizations.of(context)!.create)),
                  FilledButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(primaryForegroundColor),
                      ),
                      child: Text(AppLocalizations.of(context)!.create)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: () {
                        showLoadingDialog(context);

                        API.getInstance().getExam(exam.id).then(
                          (exam) {
                            Provider.of<ExamModel>(context, listen: false)
                                .setExam(exam);

                            dismissDialog(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ExamDetailsScreen(),
                              ),
                            );
                          },
                        );
                      },
                      style: const ButtonStyle(
                        foregroundColor:
                            MaterialStatePropertyAll(primaryForegroundColor),
                        backgroundColor:
                            MaterialStatePropertyAll(tertiaryBackgroundColor),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.details,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.download),
                    style: const ButtonStyle(
                      foregroundColor:
                          MaterialStatePropertyAll(primaryForegroundColor),
                      backgroundColor:
                          MaterialStatePropertyAll(tertiaryBackgroundColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
