import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_text_theme/product/service/sesvice_shared_preferences.dart';

@immutable
final class AppInitialize {
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();

    await runZonedGuarded(_initialize, (error, stack) {
      debugPrint('❌ Hata: $error');
      debugPrint('📍 Stack: $stack');
    });
  }

  Future<void> _initialize() async {
    await SharedPreferencesService.instance.init(); // instance kullan
  }
}