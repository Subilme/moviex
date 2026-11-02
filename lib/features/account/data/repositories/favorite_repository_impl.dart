import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/dio_exception_extension.dart';
import 'package:moviex/core/network/failures.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/account/data/datasources/account_remote_data_source.dart';
import 'package:moviex/features/account/data/models/account_movie_dto.dart';
import 'package:moviex/features/account/domain/repositories/favorite_repository.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

final favoriteRepositoryProvider = Provider<FavoriteRepository>((ref) {
  final dataSource = ref.watch(accountRemoteDatasourceProvider);
  return FavoriteRepositoryImpl(dataSource);
});

class FavoriteRepositoryImpl(this._dataSource) implements FavoriteRepository {
  final AccountRemoteDataSource _dataSource;

  @override
  Future<Result<List<Movie>>> getFavorites() async {
    try {
      final data = await _dataSource.getFavoriteMovies();
      final entities = data.results.map((dto) => dto.toMovie()).toList();
      return Success(entities);
    } on DioException catch (e) {
      return Error(e.toFailure());
    } catch (e) {
      return Error(const UnknownFailure());
    }
  }

  @override
  Future<Result<void>> toggleFavoriteMovie({
    required int movieId,
    required bool isFavorite,
  }) async {
    try {
      await _dataSource.toggleFavoriteMovie(
        movieId: movieId,
        isFavorite: isFavorite,
      );
      return Success(null);
    } on DioException catch (e) {
      return Error(e.toFailure());
    } catch (e) {
      return Error(const UnknownFailure());
    }
  }
}
