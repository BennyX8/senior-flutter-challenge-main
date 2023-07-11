import 'package:dartz/dartz.dart';
import '../../../../core/service_helpers/system_data.dart';
import '../entities/auth.dart';
import '../repository/auth_repository.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/dependencies/usecase.dart';

class Verify extends Usecase<SystemData<Auth>, VerifyParams> {
  final AuthRepository authRepository;

  Verify(this.authRepository);

  @override
  Future<Either<Failure, SystemData<Auth>>> call(params) {
    return authRepository.verify(params);
  }
}

class VerifyParams {
  final String otp;

  VerifyParams(this.otp);

  Map<String, String> get map => {'otp': otp};
}
