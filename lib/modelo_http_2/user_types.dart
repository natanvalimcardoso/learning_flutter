// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserTypes {
  final String id;
  final String userId;
  final String name;
  
  UserTypes({
    required this.id,
    required this.userId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'name': name,
    };
  }

  factory UserTypes.fromMap(Map<String, dynamic> map) {
    return UserTypes(
      id: map['id'] ?? '',
      userId: map['userId'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserTypes.fromJson(String source) =>UserTypes.fromMap(json.decode(source));

  @override
  String toString() => 'UserTypes(id: $id, userId: $userId, name: $name)';
}
