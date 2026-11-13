import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/account/domain/entities/rated_movie.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

part 'account_movie_dto.g.dart';

@JsonSerializable()
class AccountMovieDto {
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
  final double rating;

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
    this.rating = 0,
  });

  factory AccountMovieDto.fromJson(Map<String, dynamic> json) =>
      _$AccountMovieDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AccountMovieDtoToJson(this);
}

extension AccountMovieDtoMapper on AccountMovieDto {
  Movie toMovie() => Movie(
    adult: adult,
    backdropPath: backdropPath,
    genreIds: genreIds,
    id: id,
    originalLanguage: originalLanguage,
    originalTitle: originalTitle,
    overview: overview,
    popularity: popularity,
    posterPath: posterPath,
    releaseDate: releaseDate,
    title: title,
    video: video,
    voteAverage: voteAverage,
    voteCount: voteCount,
  );

  RatedMovie toRatedMovie() => RatedMovie(movie: toMovie(), rating: rating);
}
