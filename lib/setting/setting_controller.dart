// import 'package:flutter/material.dart';

// class SettingsController with ChangeNotifier {
//   ThemeMode? themeMode;

//   //ThemeMode get themeMode => _themeMode;

//   Future<void> loadSettings() async {
//     themeMode = ThemeMode.system;

//     notifyListeners();
//   }

//   Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
//     if (newThemeMode == null) return;

//     if (newThemeMode == themeMode) return;

//     themeMode = newThemeMode;

//     notifyListeners();

//     newThemeMode;
//   }
// }
