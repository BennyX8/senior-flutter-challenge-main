// ignore_for_file: annotate_overrides, overridden_fields

import 'dart:convert';

import '../../domain/entities/user.dart';


class UserModel extends User {
  final int id;
  final String email;

  final String name;
  final String? phone;
  final String? avatar;
  final String? cover;
  final String? location;
  final String? country;
  final String? gender;
  final String? birthday;
  final String? stateOfResidence;
  final String? cityOfResidence;


  const UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    required this.birthday,
    required this.phone,
    required this.avatar,
    required this.cover,
    required this.location,
    required this.cityOfResidence,
    required this.stateOfResidence,
    required this.country,
  }) : super(
          id: id,
          email: email,
          name: name,
          phone: phone,
          avatar: avatar,
          cover: cover,
          location: location,
          gender: gender,
          birthday: birthday,
          cityOfResidence: cityOfResidence,
          stateOfResidence: stateOfResidence,
          country: country,
        );

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'],
      email: data['email'],
      name: data['name'],
      phone: data['phone_no'],
      avatar: data['profil_pic'],
      cover: data['cover_photo'],
      location: data['location'],
      gender: data['gender'],
      birthday: data['date_of_birth'],
      cityOfResidence: data['city_of_residence'],
      stateOfResidence: data['state_of_recidence'],
      country: data['country'],
    );
  }
  factory UserModel.fromJson(String source) {
    final data = json.decode(source);

    return UserModel(
      id: data['id'],
      email: data['email'],
      name: data['name'],
      phone: data['phone_no'],
      avatar: data['profil_pic'],
      cover: data['cover_photo'],
      location: data['location'],
      gender: data['gender'],
      birthday: data['date_of_birth'],
      cityOfResidence: data['city_of_residence'],
      stateOfResidence: data['state_of_recidence'],
      country: data['country'],
    );
  }

  String get toJson {
    return json.encode({
      'id': id,
      'email': email,
      'name': name,
      'phone': phone,
      'avatar': avatar,
      'cover': cover,
      'location': location,
      'birthday': birthday,
      'country': country,
      'gender': gender,
    });
  }
}
