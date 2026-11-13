import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/failure_exception.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';
import 'package:moviex/features/movies/domain/usecases/get_movie_details_usecase.dart';

final movieDetailNotifierProvider = AsyncNotifierProvider.autoDispose
    .family<MovieDetailNotifier, Movie, int>(MovieDetailNotifier.new);

class MovieDetailNotifier(this.movieId) extends AsyncNotifier<Movie> {
  final int movieId;

  @override
  FutureOr<Movie> build() async {
    return fetchMovieDetails();
  }

  Future<Movie> fetchMovieDetails() async {
    final usecase = ref.read(getMovieDetailsUsecaseProvider);
    final result = await usecase(movieId);
    return result.when(
      success: (data) => data,
      error: (failure) => throw FailureException(failure),
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(fetchMovieDetails);
  }
}
