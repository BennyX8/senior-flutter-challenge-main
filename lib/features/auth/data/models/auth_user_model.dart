// ignore_for_file: annotate_overrides, overridden_fields

import 'dart:convert';

import '../../../profile/data/models/user_model.dart';
import '../../domain/entities/auth.dart';

class AuthModel extends Auth {
  final String token;
  final UserModel user;

  const AuthModel({
    required this.token,
    required this.user,
  }) : super(
          // id: id,
          token: token,
          user: user,
        );
  factory AuthModel.fromMap(Map<String, dynamic> data) {
    return AuthModel(
        token: data['token'] ?? '', user: UserModel.fromMap(data['data']));
  }
  factory AuthModel.fromJson(String source) {
    final data = json.decode(source);
    return AuthModel(
        token: data['token'], user: UserModel.fromJson(data['user']));
  }

  String get toJson {
    return json.encode({
      // 'id': id,
      'token': token,
      'user': user.toJson,
    });
  }
}
