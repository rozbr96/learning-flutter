import 'package:learning_flutter/models/doctor.dart';
import 'package:learning_flutter/models/exam.dart';
import 'package:learning_flutter/models/lab.dart';
import 'package:learning_flutter/models/patient.dart';

class ExamModel {
  late Exam _exam;

  Exam getExam() => _exam;
  Lab getLab() => _exam.lab;
  Patient getPatient() => _exam.patient;
  Doctor getDoctor() => _exam.doctor;

  setExam(Exam exam) {
    _exam = exam;
  }
}
