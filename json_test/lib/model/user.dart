
import 'package:json_test/model/picture.dart';
import 'package:json_test/model/user_dob.dart';
import 'package:json_test/model/user_name.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final Picture picture;
  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
    required this.picture,
  });

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
