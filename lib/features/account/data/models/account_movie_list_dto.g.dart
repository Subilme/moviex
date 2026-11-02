// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_movie_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountMovieListDto _$AccountMovieListDtoFromJson(Map<String, dynamic> json) =>
    AccountMovieListDto(
      page: (json['page'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => AccountMovieDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num).toInt(),
      totalResults: (json['total_results'] as num).toInt(),
    );

Map<String, dynamic> _$AccountMovieListDtoToJson(
  AccountMovieListDto instance,
) => <String, dynamic>{
  'page': instance.page,
  'results': instance.results.map((e) => e.toJson()).toList(),
  'total_pages': instance.totalPages,
  'total_results': instance.totalResults,
};
