class EmployeeModel {
  final String? id;
  final String name;
  final String doj;
  final String age;
  final String email;

  EmployeeModel({
    this.id,
    required this.name,
    required this.email,
    required this.doj,
    required this.age,
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) {
    return EmployeeModel(
      id: json['id']?.toString(),
      name: json['name'].toString(),
      email: json["email"].toString(),
      doj: json["doj"].toString(),
      age: json["age"].toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) "id": id,   // only send id if exists
      "name": name,
      "email": email,
      "doj": doj,
      "age": age,
    };
  }
}