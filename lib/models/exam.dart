import 'package:learning_flutter/models/doctor.dart';
import 'package:learning_flutter/models/exam_result.dart';
import 'package:learning_flutter/models/lab.dart';
import 'package:learning_flutter/models/patient.dart';

class Exam {
  int id;
  String date;
  Lab lab;
  Doctor doctor;
  Patient patient;
  List<ExamResult> examResults;

  Exam(this.id, this.date, this.lab, this.doctor, this.patient,
      {this.examResults = const []});

  Exam.fromJSON(Map<String, dynamic> json)
      : this(
          json['id'],
          json['date'],
          Lab.fromJSON(json['lab']),
          Doctor.fromJSON(json['doctor']),
          Patient.fromJSON(json['patient']),
          examResults: json.containsKey('exam_result')
              ? (json['exam_result'] as List<dynamic>)
                  .map((e) => ExamResult.fromJSON(e))
                  .toList()
              : [],
        );

  String formattedDate() {
    return date.split('-').reversed.join('/');
  }
}
