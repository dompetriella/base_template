// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homePageRoute,
      $sampleApiPageRoute,
      $sampleStreamPageRoute,
      $sampleAuthPageRoute,
    ];

RouteBase get $homePageRoute => GoRouteData.$route(
      path: '/',
      factory: $HomePageRouteExtension._fromState,
    );

extension $HomePageRouteExtension on HomePageRoute {
  static HomePageRoute _fromState(GoRouterState state) => const HomePageRoute();

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
      path: '/api',
      factory: $SampleApiPageRouteExtension._fromState,
    );

extension $SampleApiPageRouteExtension on SampleApiPageRoute {
  static SampleApiPageRoute _fromState(GoRouterState state) =>
      const SampleApiPageRoute();

  String get location => GoRouteData.$location(
        '/api',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $sampleStreamPageRoute => GoRouteData.$route(
      path: '/stream',
      factory: $SampleStreamPageRouteExtension._fromState,
    );

extension $SampleStreamPageRouteExtension on SampleStreamPageRoute {
  static SampleStreamPageRoute _fromState(GoRouterState state) =>
      const SampleStreamPageRoute();

  String get location => GoRouteData.$location(
        '/stream',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $sampleAuthPageRoute => GoRouteData.$route(
      path: '/auth',
      factory: $SampleAuthPageRouteExtension._fromState,
    );

extension $SampleAuthPageRouteExtension on SampleAuthPageRoute {
  static SampleAuthPageRoute _fromState(GoRouterState state) =>
      const SampleAuthPageRoute();

  String get location => GoRouteData.$location(
        '/auth',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
