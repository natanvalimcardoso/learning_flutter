// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';
import 'user_types.dart';

class User {
  final String id;
  final String name;
  final String userName;
  final List<UserTypes>? user_types;

  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.user_types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'userName': userName,
      'user_types': user_types?.map((x) => x.toMap()).toList(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      userName: map['userName'] ?? '',
      user_types: map['user_types']?.map<UserTypes>((type) {
            return UserTypes.fromMap(type);
          }).toList() ??
          const <UserTypes>[],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, name: $name, userName: $userName, user_types: $user_types)';
  }
}
