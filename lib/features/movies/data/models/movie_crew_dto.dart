import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/movies/domain/entities/crew_member.dart';
import 'package:moviex/features/movies/domain/entities/gender.dart';

part 'movie_crew_dto.g.dart';

@JsonSerializable()
class MovieCrewDto({
  this.adult = true,
  this.gender,
  required this.id,
  required this.name,
  required this.originalName,
  this.popularity = 0.0,
  this.profilePath,
  required this.creditId,
  required this.department,
  required this.job,
}) {
  final bool adult;
  final int? gender;
  final int id;
  final String name;
  final String originalName;
  final double popularity;
  final String? profilePath;
  final String creditId;
  final String department;
  final String job;
  factory MovieCrewDto.fromJson(Map<String, dynamic> json) =>
      _$MovieCrewDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieCrewDtoToJson(this);
}

extension MovieCrewDtoMapper on MovieCrewDto {
  CrewMember toCrewMember() => CrewMember(
    adult: adult,
    gender: Gender.fromInt(gender),
    id: id,
    name: name,
    originalName: originalName,
    popularity: popularity,
    profilePath: profilePath,
    creditId: creditId,
    department: department,
    jobs: [job],
  );
}
