class Usuarios {
  String? name;
  String? status;
  String? street;

  Usuarios({this.name, this.status, this.street});

  Usuarios.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    status = json['status'];
    street = json['street'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['status'] = this.status;
    data['street'] = this.street;
    return data;
  }
}
