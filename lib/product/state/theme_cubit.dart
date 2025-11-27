import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_text_theme/product/enum/app_theme_mode.dart';
import 'package:flutter_text_theme/product/service/sesvice_shared_preferences.dart';

class ThemeCubit extends Cubit<AppThemeMode> {
  ThemeCubit(this._prefsService) : super(AppThemeMode.light) {
    _loadTheme();
  }

  final SharedPreferencesService _prefsService;

  bool get isDarkMode => state == AppThemeMode.dark;

  Future<void> _loadTheme() async {
    final mode = _prefsService.themeMode;
    emit(mode);
  }

  Future<void> toggleTheme() async {
    final newMode = isDarkMode ? AppThemeMode.light : AppThemeMode.dark;
    emit(newMode);
    await _prefsService.setThemeMode(newMode);
  }
}
