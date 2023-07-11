import 'package:equatable/equatable.dart';

import '../../../profile/domain/entities/user.dart';

class Auth extends Equatable {
  final String token;
  final User user;

  const Auth({
    required this.token,
    required this.user,
  });

  @override
  List<Object?> get props => [token, user];
}
