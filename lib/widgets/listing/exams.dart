import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/models/provider/exams.dart';
import 'package:learning_flutter/utils/colors.dart';
import 'package:learning_flutter/widgets/cards/exam_brief.dart';
import 'package:provider/provider.dart';

class ExamsListing extends StatelessWidget {
  const ExamsListing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return context.watch<ExamsModel>().getExams().isEmpty
        ? Text(
            AppLocalizations.of(context)!.noExams,
            style: const TextStyle(
              color: primaryForegroundColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        : ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: context.watch<ExamsModel>().getExamsCount(),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 220,
                  child: ExamBriefCard(
                    exam: context.read<ExamsModel>().getExam(index),
                  ),
                ),
              );
            },
          );
  }
}
