import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_text_theme/future/home/home_view.dart';
import 'package:flutter_text_theme/product/init/app_initialize.dart';
import 'package:flutter_text_theme/product/init/app_state_initialize.dart';
import 'package:flutter_text_theme/product/state/theme_cubit.dart';
import 'package:flutter_text_theme/product/theme/theme_mode/theme_mode.dart';

Future<void> main() async {
  await AppInitialize().make();
  runApp(const StateInitialize(child: _MyApp()));
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'theme mode',
      darkTheme: AppTheme().appDarkTheme,
      theme: AppTheme().appLightTheme,
      themeMode: context.watch<ThemeCubit>().isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      home: HomeView(),
    );
  }
}
