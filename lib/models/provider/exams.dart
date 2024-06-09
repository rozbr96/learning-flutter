import 'package:learning_flutter/models/exam.dart';

class ExamsModel {
  List<Exam> _exams = [];

  getExam(index) => _exams[index];
  getExamsCount() => _exams.length;

  setExams(List<Exam> exams) {
    _exams = exams;
  }

  setExamsFromJSON(List json) {
    _exams = [];

    for (var data in json) {
      Exam exam = Exam.fromJSON(data);

      _exams.add(exam);
    }
  }
}
