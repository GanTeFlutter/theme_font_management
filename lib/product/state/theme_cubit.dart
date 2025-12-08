import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light);

  bool get isDarkMode => state == ThemeMode.dark;

  void toggleTheme() {
    emit(isDarkMode ? ThemeMode.light : ThemeMode.dark);
  }
} 