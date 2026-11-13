// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$discoverRoute, $movieDetailRoute];

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

RouteBase get $movieDetailRoute => GoRouteData.$route(
  path: '/movies/:movieId',
  hasOverriddenOnExit: false,
  factory: $MovieDetailRoute._fromState,
);

mixin $MovieDetailRoute on GoRouteData {
  static MovieDetailRoute _fromState(GoRouterState state) =>
      MovieDetailRoute(int.parse(state.pathParameters['movieId']!));

  MovieDetailRoute get _self => this as MovieDetailRoute;

  @override
  String get location => GoRouteData.$location(
    '/movies/${Uri.encodeComponent(_self.movieId.toString())}',
  );

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
