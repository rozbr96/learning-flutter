import 'package:flutter/material.dart';
import 'package:learning_flutter/models/exam.dart';

class ExamsModel extends ChangeNotifier {
  List<Exam> _exams = [];
  List<Exam> _filteredExams = [];

  Exam getExam(index) => _filteredExams[index];
  List<Exam> getExams() => _filteredExams;
  getExamsCount() => _filteredExams.length;

  setExams(List<Exam> exams) {
    _exams = _filteredExams = exams;
  }

  filterExams(String filter) {
    String query = filter.toLowerCase();

    _filteredExams = _exams
        .where((exam) =>
            exam.lab.name.toLowerCase().contains(query) ||
            exam.doctor.name.toLowerCase().contains(query))
        .toList();

    notifyListeners();
  }
}
