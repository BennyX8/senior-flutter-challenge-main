import 'dart:io';

import '../../features/auth/data/models/auth_user_model.dart';
import '../../features/auth/domain/entities/auth.dart';
import '../dependencies/cache_manager.dart';
import '../helpers/helpers.dart';
import '../utils/strings.dart';

final headers = {'Content-type'};

Future<Map<String, String>> getHeaders({bool? jsonRequest}) async {
  pp((await getAuthUser())?.token);

  if (jsonRequest != null && jsonRequest) {
    return {
      'Content-type': 'application/json',
      HttpHeaders.authorizationHeader:
          'Bearer ${(await getAuthUser())?.token ?? ''}',
      'Accept': 'application/json'
    };
  }
  return {
    HttpHeaders.authorizationHeader:
        'Bearer ${(await getAuthUser())?.token ?? ''}',
    'Accept': 'application/json'
  };
}

Future<Auth?> getAuthUser() async {
  final data = await CacheManager.instance.getPref(authKey);

  if (data != null) {
    return AuthModel.fromJson(data);
  }
  return null;
}

