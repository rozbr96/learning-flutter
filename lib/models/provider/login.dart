import 'package:flutter/material.dart';

class LoginModel extends ChangeNotifier {
  String _email = 'user@rebase.com';
  String _password = 'password';
  bool _keepConnected = false;

  bool shouldKeepConnected() => _keepConnected;

  Map<String, String> getData() => {'email': _email, 'password': _password};

  setEmail(String email) {
    _email = email;
  }

  setPassword(String password) {
    _password = password;
  }

  setRemember(bool keepConnected) {
    _keepConnected = keepConnected;

    notifyListeners();
  }
}
