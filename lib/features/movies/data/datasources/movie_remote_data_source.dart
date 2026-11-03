import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/api_client.dart';
import 'package:moviex/features/movies/data/models/movie_list_dto.dart';
import 'package:moviex/features/movies/domain/entities/trending_filter.dart';

final movieRemoteDataSourceProvider = Provider<MovieRemoteDataSource>((
  Ref ref,
) {
  final dio = ref.watch(apiClientProvider);
  return MovieRemoteDataSource(dio);
});

class MovieRemoteDataSource(this._dio) {
  final Dio _dio;

  Future<MovieListDto> getTrending(TrendingFilter filter) async {
    final response = await _dio.get('trending/movie/${filter.apiValue}');
    return MovieListDto.fromJson(response.data);
  }

  Future<MovieListDto> getPopular({int page = 1}) async {
    final params = {'page': page, 'language': 'en-US', 'region': 'PT'};
    final response = await _dio.get('movie/popular', queryParameters: params);
    return MovieListDto.fromJson(response.data);
  }
}
