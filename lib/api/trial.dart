//  final  url='';

// Future<List<String>> getresponse() async {
//   final response = await http.get(Uri.parse(url));
//   if(response)
// }

import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> updateUser(int userId, String name, String email) async {
  final url = Uri.parse('https://example.com/users/$userId');

  final response = await http.put(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({'name': name, 'email': email}),
  );

  if (response.statusCode == 200) {
    print('User updated successfully');
  } else {
    print('Failed to update user: ${response.statusCode}');
  }
}
