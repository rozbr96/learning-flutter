import 'package:learning_flutter/models/doctor.dart';
import 'package:learning_flutter/models/lab.dart';
import 'package:learning_flutter/models/patient.dart';

class Exam {
  int id;
  String date;
  Lab lab;
  Doctor doctor;
  Patient patient;

  Exam(this.id, this.date, this.lab, this.doctor, this.patient);
  Exam.fromJSON(Map<String, dynamic> json)
      : this(
          json['id'],
          json['date'],
          Lab.fromJSON(json['lab']),
          Doctor.fromJSON(json['doctor']),
          Patient.fromJSON(json['patient']),
        );

  String formattedDate() {
    return date.split('-').reversed.join('/');
  }
}
