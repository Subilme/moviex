import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/failure_exception.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/account/domain/usecases/get_favorite_movies_usecase.dart';
import 'package:moviex/features/account/domain/usecases/toggle_favorite_usecase.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

final favoritesNotifierProvider =
    AsyncNotifierProvider<FavoritesNotifier, Map<int, Movie>>(
      FavoritesNotifier.new,
    );

final isFavoriteProvider = Provider.family<bool, int>((ref, movieId) {
  final favorites = ref.watch(favoritesNotifierProvider).value;
  return favorites?.containsKey(movieId) ?? false;
});

class FavoritesNotifier extends AsyncNotifier<Map<int, Movie>> {
  @override
  FutureOr<Map<int, Movie>> build() async {
    return fetchFavorites();
  }

  Future<Map<int, Movie>> fetchFavorites() async {
    final usecase = ref.read(getFavoriteMoviesUsecaseProvider);
    final result = await usecase();

    return result.when(
      success: (movies) => {for (final m in movies) m.id: m},
      error: (f) => throw FailureException(f),
    );
  }

  Future<void> toggle(Movie movie) async {
    final current = state.value ?? {};
    final isFavorite = current.containsKey(movie.id);

    final next = {...current};
    if (isFavorite) {
      next.remove(movie.id);
    } else {
      next[movie.id] = movie;
    }
    state = AsyncData(next);

    final usecase = ref.read(toggleFavoriteUsecaseProvider);
    final result = await usecase(movieId: movie.id, isFavorite: !isFavorite);
    if (result is Error) {
      state = AsyncData(current);
      throw FailureException(result.failure);
    }
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(fetchFavorites);
  }
}
