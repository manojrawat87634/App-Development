import 'dart:convert';

import 'package:crud_operation/models/employee.models.dart';
import "package:http/http.dart" as http;

class EmployeeService {
      Future<List<EmployeeModel>> fetchUsers() async {
      final response = await http.get(
      Uri.parse("http://192.168.29.127:8080/employee"),
    );
    
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      print(data);
      return data.map((user) => EmployeeModel.fromJson(user)).toList();
    } else {
      throw Exception("Failed to load users");
    }
  }
     Future<void> addUsers(EmployeeModel employee) async {
  final response = await http.post(
    Uri.parse("http://192.168.29.127:8080/employee"),
    headers: {"Content-Type": "application/json"},
    body: jsonEncode(employee.toJson()),
  );

  if (response.statusCode != 200 && response.statusCode != 201) {
    throw Exception("Failed to add employee");
  }
}


  Future <void> deleteUser(String id) async {
      final response = await http.delete(
      Uri.parse("http://192.168.29.127:8080/employee/$id"),
    );
     if (response.statusCode == 200) {
      // final List data = jsonDecode(response.body);
      // print(data);
      return;
    } else {
      throw Exception("Failed to load users");
    }
  }
}