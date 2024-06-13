class TestType {
  String name;
  String reference;

  TestType(this.name, this.reference);
  TestType.fromJSON(Map<String, dynamic> json)
      : this(
          json['name'],
          json['reference'],
        );
}
