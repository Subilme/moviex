import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/dio_exception_extension.dart';
import 'package:moviex/core/network/failures.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/movies/data/datasources/movie_remote_data_source.dart';
import 'package:moviex/features/movies/data/models/movie_dto.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';
import 'package:moviex/features/movies/domain/entities/trending_filter.dart';
import 'package:moviex/features/movies/domain/repositories/movie_repository.dart';

final movieRepositoryProvider = Provider<MovieRepository>((Ref ref) {
  final dataSource = ref.watch(movieRemoteDataSourceProvider);
  return MovieRepositoryImpl(dataSource);
});

class MovieRepositoryImpl(this._dataSource) implements MovieRepository {
  final MovieRemoteDataSource _dataSource;

  @override
  Future<Result<List<Movie>>> getTrending(TrendingFilter filter) async {
    try {
      final data = await _dataSource.getTrending(filter);
      final entities = data.results.map((dto) => dto.toMovie()).toList();
      return Success(entities);
    } on DioException catch (e) {
      return Error(e.toFailure());
    } catch (e) {
      return Error(const UnknownFailure());
    }
  }
}
