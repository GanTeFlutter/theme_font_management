import 'dart:async';

import 'package:flutter/material.dart';

@immutable
final class AppInitialize {
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();

    await runZonedGuarded(_initialize, (error, stack) {});
  }

  Future<void> _initialize() async {}
}
