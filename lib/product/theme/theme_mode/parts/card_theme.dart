part of '../../theme_mode.dart';

final _lightCardTheme = CardThemeData(
  elevation: 2,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  color: _lightColorScheme.surfaceContainerHighest,
  shadowColor: _lightColorScheme.shadow.withValues(alpha: 0.08),
  surfaceTintColor: _lightColorScheme.surfaceTint,
  margin: const EdgeInsets.symmetric(vertical: 4),
);

final _darkCardTheme = CardThemeData(
  elevation: 2,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  color: _darkColorScheme.surfaceContainerHighest,
  shadowColor: _darkColorScheme.shadow.withValues(alpha: 0.3),
  surfaceTintColor: _darkColorScheme.surfaceTint,
  margin: const EdgeInsets.symmetric(vertical: 4),
);
