import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/account/data/repositories/favorite_repository_impl.dart';
import 'package:moviex/features/account/domain/repositories/favorite_repository.dart';

final toggleFavoriteUsecaseProvider =
    Provider.autoDispose<ToggleFavoriteUsecase>((Ref ref) {
      final repository = ref.watch(favoriteRepositoryProvider);
      return ToggleFavoriteUsecase(repository);
    });

class ToggleFavoriteUsecase(this._repository) {
  final FavoriteRepository _repository;

  Future<Result<void>> call({required int movieId, required bool isFavorite}) =>
      _repository.toggleFavoriteMovie(movieId: movieId, isFavorite: isFavorite);
}
