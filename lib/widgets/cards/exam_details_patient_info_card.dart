import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/models/patient.dart';
import 'package:learning_flutter/widgets/cards/text_plate.dart';

class ExamDetailsPatientInfoCard extends StatelessWidget {
  final Patient patient;

  const ExamDetailsPatientInfoCard({super.key, required this.patient});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          TextPlate(text: AppLocalizations.of(context)!.patient),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    AppLocalizations.of(context)!.cpf,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    AppLocalizations.of(context)!.email,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(patient.name),
                  Text(patient.cpf),
                  Text(patient.email),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
