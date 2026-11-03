import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/failure_exception.dart';
import 'package:moviex/core/network/failures.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';
import 'package:moviex/features/movies/domain/usecases/get_popular_movies_usecase.dart';

final popularMoviesProvider = FutureProvider.autoDispose<List<Movie>>((
  Ref ref,
) async {
  final usecase = ref.read(getPopularMoviesUsecaseProvider);
  final result = await usecase();
  return result.when(
    success: (page) => page.movies,
    error: (f) => throw FailureException(f),
  );
});

final popularMoviesNotifierProvider =
    AsyncNotifierProvider<PopularMoviesNotifier, PopularState>(
      PopularMoviesNotifier.new,
    );

class PopularMoviesNotifier extends AsyncNotifier<PopularState> {
  @override
  FutureOr<PopularState> build() async {
    final usecase = ref.read(getPopularMoviesUsecaseProvider);
    final result = await usecase();
    return result.when(
      success: (page) => PopularState(
        movies: page.movies,
        page: page.page,
        hasMore: page.hasMore,
      ),
      error: (failure) => throw FailureException(failure),
    );
  }

  Future<void> loadMore() async {
    final current = state.value;
    if (current == null || current.isLoadingMore || !current.hasMore) return;

    state = AsyncData(current.copyWith(isLoadingMore: true));

    final usecase = ref.read(getPopularMoviesUsecaseProvider);
    final result = await usecase(page: current.page + 1);

    final updated = state.value;
    if (updated == null) return;

    result.when(
      success: (newPage) {
        state = AsyncData(
          updated.copyWith(
            movies: [...updated.movies, ...newPage.movies],
            page: newPage.page,
            isLoadingMore: false,
            hasMore: newPage.hasMore,
          ),
        );
      },
      error: (failure) {
        state = AsyncData(
          updated.copyWith(isLoadingMore: false, loadMoreError: failure),
        );
      },
    );
  }
}

class PopularState {
  final List<Movie> movies;
  final int page;
  final bool isLoadingMore;
  final bool hasMore;
  final Failure? loadMoreError;

  const PopularState({
    this.movies = const [],
    this.page = 0,
    this.isLoadingMore = false,
    this.hasMore = true,
    this.loadMoreError,
  });

  PopularState copyWith({
    List<Movie>? movies,
    int? page,
    bool? isLoadingMore,
    bool? hasMore,
    Failure? loadMoreError,
  }) {
    return PopularState(
      movies: movies ?? this.movies,
      page: page ?? this.page,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasMore: hasMore ?? this.hasMore,
      loadMoreError: loadMoreError,
    );
  }
}
