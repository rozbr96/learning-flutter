import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleModel extends ChangeNotifier {
  String _locale = 'en';

  String getLocale() => _locale;

  changeLocale() {
    SharedPreferences.getInstance().then((prefs) async {
      _locale = _locale == 'pt' ? 'en' : 'pt';

      debugPrint(_locale);

      prefs.setString('locale', _locale);

      notifyListeners();
    }, onError: (err) {
      debugPrint(err.toString());
    });
  }
}
