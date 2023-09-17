import 'package:json_test/model/picture.dart';
import 'package:json_test/model/user.dart';
import 'package:json_test/model/user_dob.dart';
import 'package:json_test/model/user_name.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserApi {
  static Future<List<User>> fetchUsers() async {
    print('fetch users');
    const url = 'https://randomuser.me/api/?results=100';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final users = results.map((e) {
      final name = UserName(
        first: e['name']['first'],
        last: e['name']['last'],
        title: e['name']['title'],
      );
      final date = e['dob']['date'];
      final dob = UserDob(
        date: DateTime.parse(date),
        age: e['dob']['age'],
      );
      final picture = Picture(
          large: e['picture']['large'],
          medium: e['picture']['medium'],
          thumbnail: e['picture']['thumbnail']);
      return User(
        gender: e['gender'],
        email: e['email'],
        phone: e['phone'],
        cell: e['cell'],
        nat: e['nat'],
        name: name,
        dob: dob,
        picture: picture,
      );
    }).toList();
    return users;
  }
}
