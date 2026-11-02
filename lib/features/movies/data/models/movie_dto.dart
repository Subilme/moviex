import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_dto.g.dart';

@JsonSerializable()
class MovieDto {
  final bool adult;
  final String? backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String? overview;
  final double popularity;
  final String? posterPath;
  final String? releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  new({
    this.adult = true,
    this.backdropPath,
    this.genreIds = const [],
    this.id = 0,
    required this.originalLanguage,
    required this.originalTitle,
    this.overview,
    this.popularity = 0.0,
    this.posterPath,
    this.releaseDate,
    required this.title,
    this.video = true,
    this.voteAverage = 0.0,
    this.voteCount = 0,
  });

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieDtoToJson(this);
}
