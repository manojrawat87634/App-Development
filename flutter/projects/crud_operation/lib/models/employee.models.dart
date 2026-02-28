class EmployeeModel {
  final String id;
  final String name;
  final String doj;
  final String age;
  final String email;
  
  EmployeeModel({
    required this.id,
    required this.name,
    required this.email,
    required this.doj,
    required this.age,
   });
  
  factory EmployeeModel.fromJson(Map<String, dynamic> json) {
    return EmployeeModel(
      id: json['id'].toString(),
      name: json['name'].toString(),
      email: json["email"].toString(),
      doj: json["doj"].toString(),
      age: json["age"].toString(),
  );
  }
}