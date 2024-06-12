import 'package:flutter/material.dart';
import 'package:learning_flutter/models/doctor.dart';
import 'package:learning_flutter/widgets/cards/text_plate.dart';

class ExamDetailsDoctorInfoCard extends StatelessWidget {
  final Doctor doctor;

  const ExamDetailsDoctorInfoCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextPlate(text: 'Doctor'),
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
                  'CRM',
                  style: TextStyle(fontWeight: FontWeight.bold),
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
    );
  }
}
