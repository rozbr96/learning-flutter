import 'package:flutter/material.dart';
import 'package:learning_flutter/models/exam.dart';
import 'package:learning_flutter/utils/colors.dart';

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
                  const Expanded(
                    child: Text(
                      'Laboratório',
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                  const Expanded(
                    child: Text(
                      'Médico',
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                      child: const Text('Crea...')),
                  FilledButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(primaryForegroundColor),
                      ),
                      child: const Text('Crea...')),
                  FilledButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(primaryForegroundColor),
                      ),
                      child: const Text('Crea...')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        foregroundColor:
                            MaterialStatePropertyAll(primaryForegroundColor),
                        backgroundColor:
                            MaterialStatePropertyAll(tertiaryBackgroundColor),
                      ),
                      child: const Text(
                        'Details',
                        style: TextStyle(
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
