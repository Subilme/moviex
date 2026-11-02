import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
sealed class const Movie._() with _$Movie {
  const factory({
    required int id,
    required String title,
    String? overview,
    String? posterPath,
    String? backdropPath,
    required double voteAverage,
    String? releaseDate,
  }) = _Movie;
}
