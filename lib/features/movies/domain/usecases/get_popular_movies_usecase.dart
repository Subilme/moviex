import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:moviex/features/movies/domain/entities/movie_page.dart';
import 'package:moviex/features/movies/domain/repositories/movie_repository.dart';

final getPopularMoviesUsecaseProvider =
    Provider.autoDispose<GetPopularMoviesUsecase>((Ref ref) {
      final repository = ref.watch(movieRepositoryProvider);
      return GetPopularMoviesUsecase(repository);
    });

class GetPopularMoviesUsecase(this._repository) {
  final MovieRepository _repository;

  Future<Result<MoviePage>> call({int page = 1}) async {
    return _repository.getPopular(page: page);
  }
}
