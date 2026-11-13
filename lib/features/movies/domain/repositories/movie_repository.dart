import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';
import 'package:moviex/features/movies/domain/entities/movie_page.dart';
import 'package:moviex/features/movies/domain/entities/trending_filter.dart';

abstract interface class MovieRepository {
  Future<Result<List<Movie>>> getTrending(TrendingFilter filter);

  Future<Result<MoviePage>> getPopular({int page = 1});

  Future<Result<Movie>> getMovieDetails(int movieId);
}
