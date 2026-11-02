import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

abstract interface class FavoriteRepository {
  Future<Result<List<Movie>>> getFavorites();

  Future<Result<void>> toggleFavoriteMovie({
    required int movieId,
    required bool isFavorite,
  });
}
