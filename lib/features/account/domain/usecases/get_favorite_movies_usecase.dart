import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/account/data/repositories/favorite_repository_impl.dart';
import 'package:moviex/features/account/domain/repositories/favorite_repository.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

final getFavoriteMoviesUsecaseProvider =
    Provider.autoDispose<GetFavoriteMoviesUsecase>((Ref ref) {
      final repository = ref.watch(favoriteRepositoryProvider);
      return GetFavoriteMoviesUsecase(repository);
    });

class GetFavoriteMoviesUsecase {
  GetFavoriteMoviesUsecase(this._repository);

  final FavoriteRepository _repository;

  Future<Result<List<Movie>>> call() => _repository.getFavorites();
}
