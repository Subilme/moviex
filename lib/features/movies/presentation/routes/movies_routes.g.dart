// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$discoverRoute];

RouteBase get $discoverRoute => GoRouteData.$route(
  path: '/discover',
  hasOverriddenOnExit: false,
  factory: $DiscoverRoute._fromState,
);

mixin $DiscoverRoute on GoRouteData {
  static DiscoverRoute _fromState(GoRouterState state) => const DiscoverRoute();

  @override
  String get location => GoRouteData.$location('/discover');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
