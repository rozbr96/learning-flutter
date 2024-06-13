// ignore_for_file: non_constant_identifier_names

import 'package:learning_flutter/models/test_type.dart';

class ExamResult {
  int id;
  int exam_id;
  int test_type_id;
  int doctor_id;
  String result;
  TestType test_type;

  ExamResult(
    this.id,
    this.exam_id,
    this.test_type_id,
    this.doctor_id,
    this.result,
    this.test_type,
  );

  ExamResult.fromJSON(dynamic json)
      : this(
          json['id'],
          json['exam_id'],
          json['test_type_id'],
          json['doctor_id'],
          json['result'],
          TestType.fromJSON(json['test_type']),
        );
}
