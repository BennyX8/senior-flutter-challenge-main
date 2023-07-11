
import 'package:equatable/equatable.dart';

class User extends Equatable {
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


  const User({
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
  });

  @override
  List<Object?> get props => [];
}
