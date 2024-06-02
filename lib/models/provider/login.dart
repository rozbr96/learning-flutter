class LoginModel {
  String _email = 'user@rebase.com';
  String _password = 'password';

  Map<String, String> getData() => {'email': _email, 'password': _password};

  setEmail(String email) {
    _email = email;
  }

  setPassword(String password) {
    _password = password;
  }
}
