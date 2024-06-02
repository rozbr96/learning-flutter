class Lab {
  int id;
  String name;

  Lab(this.id, this.name);
  Lab.fromJSON(Map<String, dynamic> json) : this(json['id'], json['name']);
}
