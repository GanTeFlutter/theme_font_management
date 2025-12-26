import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_text_theme/product/conts/app_stiring.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light) {
    _loadTheme();
  }

  bool get isDarkMode => state == ThemeMode.dark;

  /// Load theme from cached preferences
  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool(AppStrings.cacheThemeMode) ?? false;
    emit(isDark ? ThemeMode.dark : ThemeMode.light);
  }

  /// Toggle theme and cache the preference
  Future<void> toggleTheme() async {
    final newTheme = isDarkMode ? ThemeMode.light : ThemeMode.dark;
    emit(newTheme);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppStrings.cacheThemeMode, newTheme == ThemeMode.dark);
  }

  /// Set specific theme mode and cache it
  Future<void> setTheme(ThemeMode mode) async {
    emit(mode);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppStrings.cacheThemeMode, mode == ThemeMode.dark);
  }

  /// Clear cached theme preference
  Future<void> clearThemeCache() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(AppStrings.cacheThemeMode);
    emit(ThemeMode.light);
  }
}
