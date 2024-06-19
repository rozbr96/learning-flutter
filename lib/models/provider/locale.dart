import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleModel extends ChangeNotifier {
  String _locale = 'en';

  LocaleModel() {
    SharedPreferences.getInstance().then((prefs) {
      _locale = prefs.getString('locale') ?? 'en';

      notifyListeners();
    });
  }

  String getLocale() => _locale;

  void changeLocale() {
    SharedPreferences.getInstance().then((prefs) async {
      _locale = _locale == 'pt' ? 'en' : 'pt';

      debugPrint(_locale);

      await prefs.setString('locale', _locale);

      notifyListeners();
    });
  }
}
