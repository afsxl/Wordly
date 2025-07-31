import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemePreference {
  static const _keyIsDark = "is_dark_theme";

  static Future<void> setDarkTheme(bool isDark) async {
    final sharedPreference = await SharedPreferences.getInstance();
    await sharedPreference.setBool(_keyIsDark, isDark);
  }

  static Future<ThemeMode> getTheme() async {
    final sharedPreference = await SharedPreferences.getInstance();
    final isDark = sharedPreference.getBool(_keyIsDark);
    if (isDark == null) {
      return ThemeMode.system;
    }
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  // Center(
  //           child: Switch(
  //             value: themeNotifier.value == ThemeMode.dark
  //                 ? true
  //                 : themeNotifier.value == ThemeMode.light
  //                 ? false
  //                 : MediaQuery.platformBrightnessOf(context) == Brightness.dark,
  //             onChanged: (newValue) async {
  //               setState(() {
  //                 themeNotifier.value = newValue
  //                     ? ThemeMode.dark
  //                     : ThemeMode.light;
  //               });
  //               await ThemePreference.setDarkTheme(newValue);
  //             },
  //           ),
  //         ),
}
