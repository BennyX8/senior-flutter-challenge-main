import 'package:dartz/dartz.dart';

import '../../../../core/dependencies/usecase.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/service_helpers/system_data.dart';
import '../repository/auth_repository.dart';

class Logout extends Usecase<SystemData, LogoutParams> {
  final AuthRepository authRepository;

  Logout(this.authRepository);

  @override
  Future<Either<Failure, SystemData>> call(params) {
    return authRepository.logout(params);
  }
}

class LogoutParams {
  Map<String, String> get props => {};
}
