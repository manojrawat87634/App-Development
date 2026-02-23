// import 'package:http/http.dart' as http;
// import 'dart:convert';

// Future<void> sendGetRequest() async {
//   final Uri url = Uri.parse('https://munnapassword.pythonanywhere.com/contact/');

//   try {
//     // Send the GET request
//     final response = await http.get(url);

//     // Check if the server returned a 200 OK response
//     if (response.statusCode == 200) {
//       // Parse the response body as JSON
//       var data = json.decode(response.body);
//       print('Response Data: $data');
//     } else {
//       print('Failed to load data. Status code: ${response.statusCode}');
//     }
//   } catch (e) {
//     print('Error occurred: $e');
//   }
// }

// void main() {
//   sendGetRequest(); // Call the function to send the GET request
// }
