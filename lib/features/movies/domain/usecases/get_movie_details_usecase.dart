import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';
import 'package:moviex/features/movies/domain/repositories/movie_repository.dart';

final getMovieDetailsUsecaseProvider =
    Provider.autoDispose<GetMovieDetailsUsecase>((Ref ref) {
      final repository = ref.watch(movieRepositoryProvider);
      return GetMovieDetailsUsecase(repository);
    });

class GetMovieDetailsUsecase(this._repository) {
  final MovieRepository _repository;

  Future<Result<Movie>> call(int movieId) {
    return _repository.getMovieDetails(movieId);
  }
}
