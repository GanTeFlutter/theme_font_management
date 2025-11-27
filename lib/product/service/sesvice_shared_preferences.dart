import 'package:flutter_text_theme/product/conts/app_stiring.dart';
import 'package:flutter_text_theme/product/enum/app_theme_mode.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  SharedPreferencesService._();
  static final SharedPreferencesService instance = SharedPreferencesService._();

  late final SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  AppThemeMode get themeMode {
    final isDark = _prefs.getBool(AppStrings.cacheThemeMode) ?? false;
    return isDark ? AppThemeMode.dark : AppThemeMode.light;
  }

  Future<void> setThemeMode(AppThemeMode mode) async {
    await _prefs.setBool(AppStrings.cacheThemeMode, mode == AppThemeMode.dark);
  }
}