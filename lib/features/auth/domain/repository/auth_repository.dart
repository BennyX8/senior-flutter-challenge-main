import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/service_helpers/system_data.dart';
import '../entities/auth.dart';
import '../usecases/login.dart';
import '../usecases/logout.dart';
import '../usecases/recover_password.dart';
import '../usecases/register.dart';
import '../usecases/verify.dart';

abstract class AuthRepository {
  Future<Either<Failure, SystemData<Auth>>> login(LoginParams params);
  Future<Either<Failure, SystemData<Auth>>> register(RegisterParams params);
  Future<Either<Failure, SystemData<Auth>>> verify(VerifyParams params);
  Future<Either<Failure, SystemData>> recoverPassword(
      RecoverPasswordParams params);
  Future<Either<Failure, SystemData>> logout(LogoutParams params);
}
