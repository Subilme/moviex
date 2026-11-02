// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieListDto _$MovieListDtoFromJson(Map<String, dynamic> json) => MovieListDto(
  page: (json['page'] as num).toInt(),
  results: (json['results'] as List<dynamic>)
      .map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalPages: (json['total_pages'] as num).toInt(),
  totalResults: (json['total_results'] as num).toInt(),
);

Map<String, dynamic> _$MovieListDtoToJson(MovieListDto instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results.map((e) => e.toJson()).toList(),
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
