// ignore_for_file: non_constant_identifier_names

class ExamResult {
  int id;
  int exam_id;
  int test_type_id;
  int doctor_id;
  String result;

  ExamResult(
    this.id,
    this.exam_id,
    this.test_type_id,
    this.doctor_id,
    this.result,
  );

  ExamResult.fromJSON(dynamic json)
      : this(
          json['id'],
          json['exam_id'],
          json['test_type_id'],
          json['doctor_id'],
          json['result'],
        );
}
