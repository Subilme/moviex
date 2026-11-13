import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/movies/domain/entities/cast_member.dart';
import 'package:moviex/features/movies/domain/entities/gender.dart';

part 'movie_cast_dto.g.dart';

@JsonSerializable()
class MovieCastDto({
  this.adult = true,
  this.gender,
  required this.knownForDepartment,
  required this.id,
  required this.name,
  required this.originalName,
  this.popularity = 0.0,
  this.profilePath,
  required this.castId,
  required this.character,
  required this.creditId,
  this.order = 0,
}) {
  final bool adult;
  final int? gender;
  final String knownForDepartment;
  final int id;
  final String name;
  final String originalName;
  final double popularity;
  final String? profilePath;
  final int castId;
  final String character;
  final String creditId;
  final int order;

  factory MovieCastDto.fromJson(Map<String, dynamic> json) =>
      _$MovieCastDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieCastDtoToJson(this);
}

extension MovieCastDtoMapper on MovieCastDto {
  CastMember toCastMember() => CastMember(
    adult: adult,
    gender: Gender.fromInt(gender),
    department: knownForDepartment,
    id: id,
    name: name,
    originalName: originalName,
    popularity: popularity,
    profilePath: profilePath,
    castId: castId,
    character: character,
    creditId: creditId,
    order: order,
  );
}
