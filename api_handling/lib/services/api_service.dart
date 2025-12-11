import 'dart:convert';
import 'package:api_handling/models/my_data.dart';
import 'package:http/http.dart' as http;


class ChatService {
  Future<List<MyDataModel>> fetchUsers() async {
    final response = await http.get(
      Uri.parse("https://munnapassword.pythonanywhere.com/contact/"),
    );
    
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((user) => MyDataModel.fromJson(user)).toList();
    } else {
      throw Exception("Failed to load users");
    }
  }
}
