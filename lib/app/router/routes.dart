import 'package:base_template/app/pages/sample_api_page.dart';
import 'package:base_template/app/pages/sample_page.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

part 'routes.g.dart';

@TypedGoRoute<SamplePageRoute>(
  path: '/',
)
class SamplePageRoute extends GoRouteData {
  const SamplePageRoute();
  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) => const SamplePage();
}

@TypedGoRoute<SampleApiPageRoute>(
  path: '/api_page',
)
class SampleApiPageRoute extends GoRouteData {
  const SampleApiPageRoute();
  static const path = '/api_page';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SampleApiPage();
}
