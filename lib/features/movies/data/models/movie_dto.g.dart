// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDto _$MovieDtoFromJson(Map<String, dynamic> json) => MovieDto(
  adult: json['adult'] as bool? ?? true,
  backdropPath: json['backdrop_path'] as String?,
  genreIds:
      (json['genre_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [],
  budget: (json['budget'] as num?)?.toInt() ?? 0,
  genres:
      (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  id: (json['id'] as num?)?.toInt() ?? 0,
  originalLanguage: json['original_language'] as String,
  originalTitle: json['original_title'] as String,
  overview: json['overview'] as String?,
  popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
  posterPath: json['poster_path'] as String?,
  releaseDate: json['release_date'] as String?,
  revenue: (json['revenue'] as num?)?.toInt() ?? 0,
  runtime: (json['runtime'] as num?)?.toInt() ?? 0,
  title: json['title'] as String,
  video: json['video'] as bool? ?? true,
  voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
  voteCount: (json['vote_count'] as num?)?.toInt() ?? 0,
  videos:
      (json['videos'] as List<dynamic>?)
          ?.map((e) => MovieVideoDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  credits: json['credits'] == null
      ? null
      : MovieCreditsDto.fromJson(json['credits'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MovieDtoToJson(MovieDto instance) => <String, dynamic>{
  'adult': instance.adult,
  'backdrop_path': ?instance.backdropPath,
  'budget': instance.budget,
  'genre_ids': instance.genreIds,
  'genres': instance.genres.map((e) => e.toJson()).toList(),
  'id': instance.id,
  'original_language': instance.originalLanguage,
  'original_title': instance.originalTitle,
  'overview': ?instance.overview,
  'popularity': instance.popularity,
  'poster_path': ?instance.posterPath,
  'release_date': ?instance.releaseDate,
  'revenue': instance.revenue,
  'runtime': instance.runtime,
  'title': instance.title,
  'video': instance.video,
  'vote_average': instance.voteAverage,
  'vote_count': instance.voteCount,
  'videos': instance.videos.map((e) => e.toJson()).toList(),
  'credits': ?instance.credits?.toJson(),
};
