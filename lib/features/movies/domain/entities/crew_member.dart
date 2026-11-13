import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/movies/domain/entities/gender.dart';

part 'crew_member.freezed.dart';

@freezed
sealed class const CrewMember._() with _$CrewMember {
  const factory({
    @Default(true) bool adult,
    @Default(Gender.unknown) Gender gender,
    required int id,
    required String name,
    required String originalName,
    @Default(0.0) double popularity,
    String? profilePath,
    required String creditId,
    required String department,
    @Default([]) List<String> jobs,
  }) = _CrewMember;
}
