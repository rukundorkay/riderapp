import 'dart:convert';

class User {
  final String uuid;
  final String name;
  final String email;
  final String phoneNumber;
  final String gender;
  final String password;

  User({
    required this.uuid,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.gender,
    required this.password,
  });

  // Factory method to create a User from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      uuid: json['uuid'],
      name: json['name'],
      email: json['email'],
      phoneNumber: json['phone_number'],
      gender: json['gender'],
      password: json['password'],
    );
  }

  // Convert User to JSON
  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'name': name,
      'email': email,
      'phone_number': phoneNumber,
      'gender': gender,
      'password': password,
    };
  }

  // CopyWith method to create a new instance with updated values
  User copyWith({
    String? uuid,
    String? name,
    String? email,
    String? phoneNumber,
    String? gender,
    String? password,
  }) {
    return User(
      uuid: uuid ?? this.uuid,
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      gender: gender ?? this.gender,
      password: password ?? this.password,
    );
  }

  String toJsonString() => json.encode(toJson());

  factory User.fromJsonString(String jsonString) {
    return User.fromJson(json.decode(jsonString));
  }
}
