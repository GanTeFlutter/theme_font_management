import 'package:flutter/material.dart';
import 'package:flutter_text_theme/product/conts/app_stiring.dart';

part 'theme_mode/base/color_schemes.dart';
part 'theme_mode/parts/card_theme.dart';
part 'theme_mode/parts/button_theme.dart';
part 'theme_mode/parts/input_theme.dart';
part 'theme_mode/parts/appbar_theme.dart';
part 'theme_mode/base/dark_theme.dart';
part 'theme_mode/base/light_theme.dart';
part 'theme_mode/parts/text_theme.dart';

final class AppTheme {
  AppTheme._();
  static ThemeData get darkTheme => _darkTheme;
  static ThemeData get lightTheme => _lightTheme;
}
