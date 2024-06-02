import 'package:flutter/material.dart';
import 'package:learning_flutter/models/exam.dart';
import 'package:learning_flutter/utils/colors.dart';
import 'package:learning_flutter/widgets/cards/exam_brief.dart';
import 'package:learning_flutter/widgets/inputs/search.dart';

const examData = {
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
};

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_left),
          style: const ButtonStyle(
            iconColor: MaterialStatePropertyAll(primaryBackgroundColor),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'My Exams',
          style: TextStyle(
            color: primaryForegroundColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SearchInput(),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 220,
                    child: ExamBriefCard(
                      exam: Exam.fromJSON(examData),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
