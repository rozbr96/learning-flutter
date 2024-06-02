import 'package:flutter/material.dart';
import 'package:learning_flutter/models/exam.dart';
import 'package:learning_flutter/widgets/cards/exam_brief.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExamBriefCard(
        exam: Exam.fromJSON({
          "id": 1,
          "patient_id": 1,
          "doctor_id": 4,
          "lab_id": 1,
          "date": "2023-10-10",
          "created_at": "2024-05-29T20:11:44.592Z",
          "updated_at": "2024-05-29T20:11:44.592Z",
          "lab": {
            "id": 1,
            "name": "Lab 1",
            "created_at": "2024-05-29T20:11:44.547Z",
            "updated_at": "2024-05-29T20:11:44.547Z"
          },
          "doctor": {
            "id": 4,
            "name": "Yasmini Chiofalo",
            "crm": "12345678904",
            "created_at": "2024-05-29T20:11:44.540Z",
            "updated_at": "2024-05-29T20:11:44.540Z"
          },
          "patient": {
            "id": 1,
            "name": "João Souza",
            "cpf": "12345678901",
            "email": "user@rebase.com",
            "created_at": "2024-05-29T20:11:44.080Z",
            "updated_at": "2024-05-29T20:11:44.080Z"
          }
        }),
      ),
    );
  }
}
