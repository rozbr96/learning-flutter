import 'dart:core';
import 'package:dio/dio.dart';
import 'package:learning_flutter/models/exam.dart';

class AuthenticationError extends Error {}

class ConnectionError extends Error {}

class API {
  static API? _instance;

  static String apiHost = 'http://localhost:10000';
  static String apiLoginEndpoint = '/auth/sign_in';
  static String apiExamsEndpoint = '/api/v1/exams';
  static String Function(int) apiExamEndpoint = (id) => '/api/v1/exams/$id';

  late Dio _dio;
  late Map<String, String> _authorizationHeaders;

  API._() {
    _dio = Dio(
      BaseOptions(
        baseUrl: apiHost,
        validateStatus: (status) => true,
      ),
    );
  }

  static API getInstance() => _instance ??= API._();

  void setAuthorizationHeaders(Map<String, dynamic> authorizationHeaders) {
    _authorizationHeaders = {
      'uid': authorizationHeaders['uid'],
      'client': authorizationHeaders['client'],
      'access-token': authorizationHeaders['access-token'],
    };
  }

  Future<Map<String, String>> login(loginData) {
    return _dio.post(apiLoginEndpoint, data: loginData).then((response) {
      switch (response.statusCode) {
        case 200:
          _authorizationHeaders = {
            'uid': response.headers['uid']!.first,
            'client': response.headers['client']!.first,
            'access-token': response.headers['access-token']!.first,
          };

          return Future.value(_authorizationHeaders);

        case 401:
          return Future.error(AuthenticationError());

        default:
          return Future.error(ConnectionError());
      }
    });
  }

  Future<List<Exam>> listExams() {
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
            return Future.error(AuthenticationError());

          default:
            return Future.error(ConnectionError());
        }
      },
    );
  }

  Future<Exam> getExam(int examId) async {
    return _dio
        .get(apiExamEndpoint(examId),
            options: Options(headers: _authorizationHeaders))
        .then(
      (response) {
        switch (response.statusCode) {
          case 200:
            return Exam.fromJSON(response.data);

          default:
            return Future.error(ConnectionError());
        }
      },
    );
  }
}
