import 'package:base_template/app/pages/sample_api_page.dart';
import 'package:base_template/app/pages/home_page.dart';
import 'package:base_template/app/pages/sample_auth_page.dart';
import 'package:base_template/app/pages/sample_stream_page.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

part 'routes.g.dart';

@TypedGoRoute<HomePageRoute>(
  path: '/',
)
class HomePageRoute extends GoRouteData {
  const HomePageRoute();
  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

@TypedGoRoute<SampleApiPageRoute>(
  path: '/api',
)
class SampleApiPageRoute extends GoRouteData {
  const SampleApiPageRoute();
  static const path = '/api';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SampleApiPage();
}

@TypedGoRoute<SampleStreamPageRoute>(
  path: '/stream',
)
class SampleStreamPageRoute extends GoRouteData {
  const SampleStreamPageRoute();
  static const path = '/stream';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SampleStreamPage();
}

@TypedGoRoute<SampleAuthPageRoute>(
  path: '/auth',
)
class SampleAuthPageRoute extends GoRouteData {
  const SampleAuthPageRoute();
  static const path = '/auth';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SampleAuthPage();
}
