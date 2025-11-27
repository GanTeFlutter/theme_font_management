import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_text_theme/product/service/sesvice_shared_preferences.dart';

import 'package:flutter_text_theme/product/state/theme_cubit.dart';

class StateInitialize extends StatelessWidget {
  const StateInitialize({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(SharedPreferencesService.instance),
        ),
      ],
      child: child,
    );
  }
}
