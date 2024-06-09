import 'dart:core';
import 'package:dio/dio.dart';
import 'package:learning_flutter/models/exam.dart';

class AuthenticationError extends Error {}

class ConnectionError extends Error {}

class API {
  static API? _instance;

  static String apiHost = 'http://localhost:3000';
  static String apiLoginEndpoint = '/auth/sign_in';
  static String apiExamsEndpoint = '/api/v1/exams';

  late Dio _dio;
  late Map<String, String> _authorizationHeaders;

  API._() {
    _dio = Dio(
      BaseOptions(
        baseUrl: apiHost,
        validateStatus: (status) => status! < 500,
      ),
    );
  }

  static API getInstance() => _instance ??= API._();

  Future<void> login(loginData) {
    return _dio.post(apiLoginEndpoint, data: loginData).then((response) {
      switch (response.statusCode) {
        case 200:
          _authorizationHeaders = {
            'uid': response.headers['uid']!.first,
            'client': response.headers['client']!.first,
            'access-token': response.headers['access-token']!.first,
          };

          break;

        case 401:
          throw AuthenticationError();
      }
    });
  }

  Future<List<Exam>> listExams() async {
    return _dio
        .get(apiExamsEndpoint, options: Options(headers: _authorizationHeaders))
        .then(
      (response) {
        switch (response.statusCode) {
          case 200:
            return (response.data as List)
                .map((e) => Exam.fromJSON(e))
                .toList();

          case 401:
            throw AuthenticationError();

          default:
            throw ConnectionError();
        }
      },
    );
  }
}
