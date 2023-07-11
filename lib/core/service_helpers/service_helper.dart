import 'dart:convert';

import 'package:http/http.dart';

import '../apis/api_auth.dart';
import '../dependencies/injection_container.dart';
import '../dependencies/json_checker.dart';
import '../errors/exception.dart';
import '../utils/enum.dart';
import 'api_data.dart';
import 'meta.dart';

class ApiServiceHelper {
  Future<ApiData> post({
    required String url,
    required RequestType type,
    bool withAuth = true,
    Map<String, String>? params,
    Map<String, String>? body,
  }) async {
    //Initialize dependecies
    final client = sl<Client>();
    final checker = sl<JsonChecker>();

    //Get predefined headers with bearer token
    final headers = withAuth? await getHeaders(jsonRequest: type == RequestType.json):null;

    //Construct response from http request
    final response = await client.post(
      Uri(scheme: 'https', host: url, queryParameters: params),
      headers: headers,
      body: type == RequestType.json ? json.encode(body) : body,
    );

    //Check if response is in valid json format
    if (await checker.isJson(response.body)) {
      final obj = json.decode(response.body);

      //Verify that server granted our request or not
      if (obj['status'] == true) {
        return ApiData(
          data: obj['data'],
          status: obj['status'],
          message: obj['message'],
          meta: Meta(),
        );
      } else {
        throw ServerException(obj['message']);
      }
    } else {
      throw const FormatException();
    }
  }

  Future<ApiData> get({
    required String url,
    bool withAuth = true,
    Map<String, String>? params,
  }) async {
    //Initialize dependecies
    final client = sl<Client>();
    final checker = sl<JsonChecker>();

    //Get predefined headers with bearer token
    final headers = await getHeaders();

    //Construct response from http request
    final response = await client.get(
      Uri(scheme: 'https', host: url, queryParameters: params),
      headers: withAuth ? headers : null,
    );

    //Check if response is in valid json format
    if (await checker.isJson(response.body)) {
      final obj = json.decode(response.body);

      //Verify that server granted our request or not
      if (obj['status'] == true) {
        return ApiData(
          data: obj['data'],
          status: obj['status'],
          message: obj['message'],
          meta: Meta(),
        );
      } else {
        throw ServerException(obj['message']);
      }
    } else {
      throw const FormatException();
    }
  }
}
