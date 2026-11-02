import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/dio_exception_extension.dart';
import 'package:moviex/core/network/failures.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/account/data/datasources/account_remote_data_source.dart';
import 'package:moviex/features/account/data/models/account_movie_dto.dart';
import 'package:moviex/features/account/data/models/user_dto.dart';
import 'package:moviex/features/account/domain/entities/rated_movie.dart';
import 'package:moviex/features/account/domain/entities/user.dart';
import 'package:moviex/features/account/domain/repositories/account_repository.dart';

final accountRepositoryProvider = Provider<AccountRepository>((ref) {
  final dataSource = ref.watch(accountRemoteDatasourceProvider);
  return AccountRepositoryImpl(dataSource);
});

class AccountRepositoryImpl(this._dataSource) implements AccountRepository {
  final AccountRemoteDataSource _dataSource;

  @override
  Future<Result<User>> getUser() async {
    try {
      final data = await _dataSource.getUser();
      return Success(data.toEntity());
    } on DioException catch (e) {
      return Error(e.toFailure());
    } catch (e) {
      return Error(const UnknownFailure());
    }
  }

  @override
  Future<Result<List<RatedMovie>>> getRated() async {
    try {
      final data = await _dataSource.getRatedMovies();
      final entities = data.results.map((dto) => dto.toRatedMovie()).toList();
      return Success(entities);
    } on DioException catch (e) {
      return Error(e.toFailure());
    } catch (e) {
      return Error(const UnknownFailure());
    }
  }
}
