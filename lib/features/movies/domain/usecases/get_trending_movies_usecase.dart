import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';
import 'package:moviex/features/movies/domain/entities/trending_filter.dart';
import 'package:moviex/features/movies/domain/repositories/movie_repository.dart';

final getTrendingMoviesUsecaseProvider =
    Provider.autoDispose<GetTrendingMoviesUsecase>((Ref ref) {
      final repository = ref.watch(movieRepositoryProvider);
      return GetTrendingMoviesUsecase(repository);
    });

class GetTrendingMoviesUsecase(this._repository) {
  final MovieRepository _repository;

  Future<Result<List<Movie>>> call(TrendingFilter filter) async {
    return _repository.getTrending(filter);
  }
}
