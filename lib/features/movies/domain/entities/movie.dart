import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/movies/domain/entities/cast_member.dart';
import 'package:moviex/features/movies/domain/entities/crew_member.dart';
import 'package:moviex/features/movies/domain/entities/genre.dart';
import 'package:moviex/features/movies/domain/entities/movie_video.dart';

part 'movie.freezed.dart';

@freezed
sealed class const Movie._() with _$Movie {
  const factory({
    @Default(true) bool adult,
    String? backdropPath,
    @Default([]) List<int> genreIds,
    @Default(0) int budget,
    @Default([]) List<Genre> genres,
    required int id,
    required String originalLanguage,
    required String originalTitle,
    String? overview,
    @Default(0.0) double popularity,
    String? posterPath,
    String? releaseDate,
    @Default(0) int revenue,
    @Default(0) int runtime,
    required String title,
    @Default(true) bool video,
    @Default(0.0) double voteAverage,
    @Default(0) int voteCount,
    @Default([]) List<MovieVideo> videos,
    @Default([]) List<CastMember> cast,
    @Default([]) List<CrewMember> crew,
  }) = _Movie;

  MovieVideo? get trailer {
    final trailers = videos
        .where(
          (video) =>
              video.site == VideoSite.youtube &&
              video.type == VideoType.trailer,
        )
        .toList();
    if (trailers.isEmpty) return null;

    return trailers.firstWhere(
      (video) => video.official,
      orElse: () => trailers.first,
    );
  }
}
