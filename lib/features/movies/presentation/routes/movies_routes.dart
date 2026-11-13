import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/features/movies/presentation/discover/pages/discover_page.dart';
import 'package:moviex/features/movies/presentation/movie_detail/pages/movie_detail_page.dart';

part 'movies_routes.g.dart';

const String _discoverRoute = '/discover';
const String _movieDetailRoute = '/movies/:movieId';

@TypedGoRoute<DiscoverRoute>(path: _discoverRoute)
class const DiscoverRoute() extends GoRouteData with $DiscoverRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DiscoverPage();
  }
}

@TypedGoRoute<MovieDetailRoute>(path: _movieDetailRoute)
class MovieDetailRoute(this.movieId)
    extends GoRouteData
    with $MovieDetailRoute {
  final int movieId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MovieDetailPage(movieId: movieId);
  }
}
