import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:learning_flutter/models/doctor.dart';
import 'package:learning_flutter/widgets/cards/text_plate.dart';

class ExamDetailsDoctorInfoCard extends StatelessWidget {
  final Doctor doctor;

  const ExamDetailsDoctorInfoCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          TextPlate(text: AppLocalizations.of(context)!.doctor),
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
                    AppLocalizations.of(context)!.crm,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // const SizedBox(width: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(doctor.name),
                  Text(doctor.crm),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
