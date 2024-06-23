import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static const String _loggedInDataKey = 'loggedInData';
  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  static void deleteLoggedInData() {
    _storage.delete(key: _loggedInDataKey);
  }

  static Future<String?> getLoggedInData() {
    return _storage.read(key: _loggedInDataKey);
  }

  static void setLoggedInData(Map<String, dynamic> loggedInData) {
    _storage.write(key: _loggedInDataKey, value: jsonEncode(loggedInData));
  }
}
