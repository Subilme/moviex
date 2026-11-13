// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_video_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieVideoDto _$MovieVideoDtoFromJson(Map<String, dynamic> json) =>
    MovieVideoDto(
      name: json['name'] as String,
      key: json['key'] as String,
      site: json['site'] as String?,
      size: (json['size'] as num?)?.toInt() ?? 0,
      type: json['type'] as String?,
      official: json['official'] as bool? ?? true,
      publishedAt: DateTime.parse(json['published_at'] as String),
      id: json['id'] as String,
    );

Map<String, dynamic> _$MovieVideoDtoToJson(MovieVideoDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key': instance.key,
      'site': ?instance.site,
      'size': instance.size,
      'type': ?instance.type,
      'official': instance.official,
      'published_at': instance.publishedAt.toIso8601String(),
      'id': instance.id,
    };
