import 'package:flutter/material.dart';

import '../theme_companent/index.dart';

final class AppTheme {
  ThemeData get appDarkTheme => ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: elevatedButtonDarkThemeData,
    textTheme: textTheme,
    navigationBarTheme: navigationBarDarkTheme,
  );

  ThemeData get appLightTheme => ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: elevatedButtonLightThemeData,
    textTheme: textTheme,
    navigationBarTheme: navigationBarLightTheme,
  );
}
