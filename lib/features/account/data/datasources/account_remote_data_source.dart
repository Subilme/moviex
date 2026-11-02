import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/api_client.dart';
import 'package:moviex/core/providers/tmdb_credentials.dart';
import 'package:moviex/features/account/data/models/account_movie_list_dto.dart';
import 'package:moviex/features/account/data/models/user_dto.dart';

final accountRemoteDatasourceProvider = Provider<AccountRemoteDataSource>((
  Ref ref,
) {
  final dio = ref.watch(apiClientProvider);
  final accountId = ref.watch(accountIdProvider);
  return AccountRemoteDataSource(dio, accountId);
});

class AccountRemoteDataSource(this._dio, this._accountId) {
  final int _accountId;

  final Dio _dio;

  Future<UserDto> getUser() async {
    final response = await _dio.get("account/$_accountId");
    return UserDto.fromJson(response.data);
  }

  Future<AccountMovieListDto> getFavoriteMovies() async {
    final response = await _dio.get("account/$_accountId/favorite/movies");
    return AccountMovieListDto.fromJson(response.data);
  }

  Future<void> toggleFavoriteMovie({
    required int movieId,
    required bool isFavorite,
  }) async {
    final body = {
      "media_type": "movie",
      "media_id": movieId,
      "favorite": isFavorite,
    };
    await _dio.post("account/$_accountId/favorite", data: body);
  }

  Future<AccountMovieListDto> getRatedMovies() async {
    final response = await _dio.get("account/$_accountId/rated/movies");
    return AccountMovieListDto.fromJson(response.data);
  }
}
