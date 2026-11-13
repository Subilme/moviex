import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/movies/domain/entities/gender.dart';

part 'cast_member.freezed.dart';

@freezed
sealed class const CastMember._() with _$CastMember {
  const factory({
    @Default(true) bool adult,
    @Default(Gender.unknown) Gender gender,
    required String department,
    required int id,
    required String name,
    required String originalName,
    @Default(0.0) double popularity,
    String? profilePath,
    required int castId,
    required String character,
    required String creditId,
    @Default(0) int order,
  }) = _CastMember;
}
