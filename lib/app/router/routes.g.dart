// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $samplePageRoute,
      $sampleApiPageRoute,
    ];

RouteBase get $samplePageRoute => GoRouteData.$route(
      path: '/',
      factory: $SamplePageRouteExtension._fromState,
    );

extension $SamplePageRouteExtension on SamplePageRoute {
  static SamplePageRoute _fromState(GoRouterState state) =>
      const SamplePageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $sampleApiPageRoute => GoRouteData.$route(
      path: '/api_page',
      factory: $SampleApiPageRouteExtension._fromState,
    );

extension $SampleApiPageRouteExtension on SampleApiPageRoute {
  static SampleApiPageRoute _fromState(GoRouterState state) =>
      const SampleApiPageRoute();

  String get location => GoRouteData.$location(
        '/api_page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
