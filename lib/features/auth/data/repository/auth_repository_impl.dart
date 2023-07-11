import 'package:dartz/dartz.dart';

import '../../../../core/apis/api_endpoints.dart';
import '../../../../core/dependencies/network_info.dart';
import '../../../../core/dependencies/service_runner.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/service_helpers/service_helper.dart';
import '../../../../core/service_helpers/system_data.dart';
import '../../../../core/utils/enum.dart';
import '../../domain/entities/auth.dart';
import '../../domain/repository/auth_repository.dart';
import '../../domain/usecases/login.dart';
import '../../domain/usecases/logout.dart';
import '../../domain/usecases/register.dart';
import '../../domain/usecases/verify.dart';
import '../models/auth_user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiServiceHelper serviceHelper;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl(this.serviceHelper, this.networkInfo);

  @override
  Future<Either<Failure, SystemData<AuthModel>>> login(
      LoginParams params) async {
    return await ServiceRunner<SystemData<AuthModel>>(networkInfo: networkInfo)
        .runApiService(() async {
      //Api Response data
      final data = await serviceHelper.post(
        type: RequestType.map,
        body: params.map,
        url: 'url',
      );

      return SystemData.fromApiService(data);
    });
  }

  @override
  Future<Either<Failure, SystemData>> logout(LogoutParams params) async {
    return await ServiceRunner<SystemData>(networkInfo: networkInfo)
        .runApiService(() async {
      //Api Response data
      final data = await serviceHelper.post(
        url: 'url',
        type: RequestType.map,
      );

      return SystemData.fromApiService(data);
    });
  }

  @override
  Future<Either<Failure, SystemData>> recoverPassword(params) async {
    return await ServiceRunner<SystemData>(networkInfo: networkInfo)
        .runApiService(() async {
      //Api Response data
      final data = await serviceHelper.post(
        url: recoverPasswordUrl,
        type: RequestType.map,
      );

      final model = AuthModel.fromMap(data.data);

      return SystemData(
        data: model,
        message: data.message,
        meta: data.meta,
      );
    });
  }

  @override
  Future<Either<Failure, SystemData<AuthModel>>> register(
      RegisterParams params) async {
    return await ServiceRunner<SystemData<AuthModel>>(
      networkInfo: networkInfo,
    ).runApiService(() async {
      //Api Response data
      final data = await serviceHelper.post(
        url: registerUrl,
        type: RequestType.map,
        body: params.map,
      );

      final model = AuthModel.fromMap(data.data);

      return SystemData(
        data: model,
        message: data.message,
        meta: data.meta,
      );
    });
  }

  @override
  Future<Either<Failure, SystemData<Auth>>> verify(VerifyParams params) async {
    return await ServiceRunner<SystemData<Auth>>(networkInfo: networkInfo)
        .runApiService(() async {
      //Api Response data
      final data = await serviceHelper.post(
        url: verifyUrl,
        type: RequestType.map,
        body: params.map,
      );

      //Model data from API
      final model = AuthModel.fromMap(data.data);

      return SystemData(
        data: model,
        message: data.message,
        meta: data.meta,
      );
    });
  }
}
