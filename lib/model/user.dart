import 'package:responsivedashboard/model/user_dob.dart';
import 'package:responsivedashboard/model/user_location.dart';
import 'package:responsivedashboard/model/user_name.dart';
import 'package:responsivedashboard/model/user_picture.dart';

class User {
  final String gender, email, phone, cell, nat;
  final UserDob dob;
  final UserName name;
  final UserPicture picture;
  final UserLocation location;
  User(
      {required this.gender,
      required this.location,
      required this.dob,
      required this.email,
      required this.name,
      required this.phone,
      required this.cell,
      required this.picture,
      required this.nat});

  factory User.fromMap(Map<String, dynamic> e) {
    final name = UserName.fromMap(e['name']);
    final location = UserLocation.fromMap(e['location']);
    final picture = UserPicture.fromMap(e['picture']);
    final dob = UserDob.fromMap(e['dob']);
    return User(
        cell: e['cell'],
        email: e['email'],
        phone: e['phone'],
        nat: e['nat'],
        name: name,
        gender: e['gender'],
        dob: dob,
        location: location,
        picture: picture);
  }

  String get fullname {
    return '${name.title} ${name.first} ${name.last}';
  }
}
