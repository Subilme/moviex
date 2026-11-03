import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/failure_exception.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';
import 'package:moviex/features/movies/domain/entities/trending_filter.dart';
import 'package:moviex/features/movies/domain/repositories/movie_repository.dart';

final trendingMoviesProvider = FutureProvider.autoDispose
    .family<List<Movie>, TrendingFilter>((ref, filter) async {
      final usecase = ref.watch(getTrendingMoviesUsecase);
      final result = await usecase(filter);
      return result.when(
        success: (list) => list,
        error: (failure) => throw FailureException(failure),
      );
    });

final getTrendingMoviesUsecase = Provider.autoDispose<GetTrendingMoviesUsecase>(
  (Ref ref) {
    final repository = ref.watch(movieRepositoryProvider);
    return GetTrendingMoviesUsecase(repository);
  },
);

class GetTrendingMoviesUsecase(this._repository) {
  final MovieRepository _repository;

  Future<Result<List<Movie>>> call(TrendingFilter filter) async {
    return _repository.getTrending(filter);
  }
}
