import 'package:dartz/dartz.dart';

import '../../../../core/dependencies/usecase.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/service_helpers/system_data.dart';
import '../entities/auth.dart';
import '../repository/auth_repository.dart';

class Register extends Usecase<SystemData<Auth>, RegisterParams> {
  final AuthRepository authRepository;

  Register(this.authRepository);

  @override
  Future<Either<Failure, SystemData<Auth>>> call(params) {
    return authRepository.register(params);
  }
}

class RegisterParams {
  final String name;
  final String email;
  final String password;

  RegisterParams({
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, String> get map => {
        'name': name,
        'email': email,
        'password': password,
      };
}
