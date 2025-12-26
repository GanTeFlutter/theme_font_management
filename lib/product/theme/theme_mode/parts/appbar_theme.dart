part of '../../theme_mode.dart';

final _lightAppBarTheme = AppBarTheme(
  centerTitle: true,
  elevation: 0,
  scrolledUnderElevation: 2,
  backgroundColor: _lightColorScheme.surface,
  foregroundColor: _lightColorScheme.onSurface,
  surfaceTintColor: _lightColorScheme.surfaceTint,
  titleTextStyle: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: _lightColorScheme.onSurface,
  ),
  iconTheme: IconThemeData(color: _lightColorScheme.onSurface),
);

final _darkAppBarTheme = AppBarTheme(
  centerTitle: true,
  elevation: 0,
  scrolledUnderElevation: 2,
  backgroundColor: _darkColorScheme.surface,
  foregroundColor: _darkColorScheme.onSurface,
  surfaceTintColor: _darkColorScheme.surfaceTint,
  titleTextStyle: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: _darkColorScheme.onSurface,
  ),
  iconTheme: IconThemeData(color: _darkColorScheme.onSurface),
);
