import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          const TextPlate(text: 'Patient'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'CPF',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold),
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
