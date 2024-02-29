import 'package:base_template/app/router/routes.dart';
import 'package:base_template/app/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    late final GoRouter router = GoRouter(routes: $appRoutes);
    return MaterialApp.router(
      title: 'App',
      themeMode: ThemeMode.light,
      theme: lightTheme,
      routerConfig: router,
    );
  }
}
