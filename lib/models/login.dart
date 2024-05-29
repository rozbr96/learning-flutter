import 'package:flutter/material.dart';

class LoginModel extends ChangeNotifier {
  String _email = '';
  String _password = '';

  String getEmail() => _email;
  String getPassword() => _password;

  setEmail(String email) => {_email = email};
  setPassword(String password) => {_password = password};
}