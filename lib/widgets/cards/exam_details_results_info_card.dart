import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learning_flutter/models/exam.dart';
import 'package:learning_flutter/widgets/cards/exam_result.dart';
import 'package:learning_flutter/widgets/cards/text_plate.dart';

class ExamDetailsResultsInfoCard extends StatelessWidget {
  final Exam exam;

  const ExamDetailsResultsInfoCard({
    super.key,
    required this.exam,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          const TextPlate(text: 'Analisys'),
          const SizedBox(height: 10),
          exam.examResults.isEmpty
              ? const Text(
                  'Nenhum teste para o exame especificado',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: exam.examResults.length,
                  itemBuilder: (context, index) {
                    return ExamResultCard(
                      exam: exam,
                      result: exam.examResults[index],
                    );
                  },
                )
        ],
      ),
    );
  }
}
