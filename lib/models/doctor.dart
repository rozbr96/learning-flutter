class Doctor {
  int id;
  String name;
  String crm;

  Doctor(this.id, this.name, this.crm);
  Doctor.fromJSON(Map<String, dynamic> json)
      : this(json['id'], json['name'], json['crm']);
}
