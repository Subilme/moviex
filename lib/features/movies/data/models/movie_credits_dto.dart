import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/movies/data/models/movie_cast_dto.dart';
import 'package:moviex/features/movies/data/models/movie_crew_dto.dart';

part 'movie_credits_dto.g.dart';

@JsonSerializable()
class MovieCreditsDto({this.cast = const [], this.crew = const []}) {
  final List<MovieCastDto> cast;
  final List<MovieCrewDto> crew;

  factory MovieCreditsDto.fromJson(Map<String, dynamic> json) =>
      _$MovieCreditsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieCreditsDtoToJson(this);
}
