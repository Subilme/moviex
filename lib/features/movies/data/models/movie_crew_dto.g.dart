// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_crew_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieCrewDto _$MovieCrewDtoFromJson(Map<String, dynamic> json) => MovieCrewDto(
  adult: json['adult'] as bool? ?? true,
  gender: (json['gender'] as num?)?.toInt(),
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  originalName: json['original_name'] as String,
  popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
  profilePath: json['profile_path'] as String?,
  creditId: json['credit_id'] as String,
  department: json['department'] as String,
  job: json['job'] as String,
);

Map<String, dynamic> _$MovieCrewDtoToJson(MovieCrewDto instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'gender': ?instance.gender,
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'popularity': instance.popularity,
      'profile_path': ?instance.profilePath,
      'credit_id': instance.creditId,
      'department': instance.department,
      'job': instance.job,
    };
