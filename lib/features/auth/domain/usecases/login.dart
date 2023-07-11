import 'package:dartz/dartz.dart';

import '../../../../core/dependencies/usecase.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/service_helpers/system_data.dart';
import '../entities/auth.dart';
import '../repository/auth_repository.dart';

class Login extends Usecase<SystemData<Auth>, LoginParams> {
  final AuthRepository authRepository;

  Login(this.authRepository);

  @override
  Future<Either<Failure, SystemData<Auth>>> call(params) {
    return authRepository.login(params);
  }
}

class LoginParams {
  final String email;
  final String password;

  LoginParams(this.email, this.password);

  Map<String, String> get map => {'email': email, 'password': password};
}
