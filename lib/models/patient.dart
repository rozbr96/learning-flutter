class Patient {
  int id;
  String name;
  String cpf;
  String email;

  Patient(this.id, this.name, this.cpf, this.email);
  Patient.fromJSON(Map<String, dynamic> json)
      : this(json['id'], json['name'], json['cpf'], json['email']);
}
