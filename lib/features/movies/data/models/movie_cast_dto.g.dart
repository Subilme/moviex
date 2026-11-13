// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_cast_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieCastDto _$MovieCastDtoFromJson(Map<String, dynamic> json) => MovieCastDto(
  adult: json['adult'] as bool? ?? true,
  gender: (json['gender'] as num?)?.toInt(),
  knownForDepartment: json['known_for_department'] as String,
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  originalName: json['original_name'] as String,
  popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
  profilePath: json['profile_path'] as String?,
  castId: (json['cast_id'] as num).toInt(),
  character: json['character'] as String,
  creditId: json['credit_id'] as String,
  order: (json['order'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$MovieCastDtoToJson(MovieCastDto instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'gender': ?instance.gender,
      'known_for_department': instance.knownForDepartment,
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'popularity': instance.popularity,
      'profile_path': ?instance.profilePath,
      'cast_id': instance.castId,
      'character': instance.character,
      'credit_id': instance.creditId,
      'order': instance.order,
    };
