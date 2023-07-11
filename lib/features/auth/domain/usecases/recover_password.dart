import 'package:dartz/dartz.dart';

import '../../../../core/dependencies/usecase.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/service_helpers/system_data.dart';
import '../repository/auth_repository.dart';

class RecoverPassword extends Usecase<SystemData, RecoverPasswordParams> {
  final AuthRepository authRepository;

  RecoverPassword(this.authRepository);

  @override
  Future<Either<Failure, SystemData>> call(params) {
    return authRepository.recoverPassword(params);
  }
}

class RecoverPasswordParams {
  final String email;

  RecoverPasswordParams(this.email);

  Map<String, String> get map => {'email': email};
}
