import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light) {
    _loadTheme();
  }

  static const String _themeKey = 'theme_mode';

  bool get isDarkMode => state == ThemeMode.dark;

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool(_themeKey) ?? false;
    emit(isDark ? ThemeMode.dark : ThemeMode.light);
  }

  Future<void> toggleTheme() async {
    final newTheme = isDarkMode ? ThemeMode.light : ThemeMode.dark;
    emit(newTheme);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themeKey, newTheme == ThemeMode.dark);
  }

  Future<void> setTheme(ThemeMode mode) async {
    emit(mode);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themeKey, mode == ThemeMode.dark);
  }

  Future<void> clearThemeCache() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_themeKey);
    emit(ThemeMode.light);
  }
}
