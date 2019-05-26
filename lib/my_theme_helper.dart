import 'package:flutter/material.dart';

class ThemeHelper extends ChangeNotifier {
  ThemeData _theme;

  ThemeHelper(this._theme);

  getTheme() => _theme;

  setTheme(ThemeData theme) {
    _theme = theme;

    notifyListeners();
  }
}
