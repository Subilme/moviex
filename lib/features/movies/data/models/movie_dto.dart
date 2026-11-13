import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/movies/data/models/genre_dto.dart';
import 'package:moviex/features/movies/data/models/movie_cast_dto.dart';
import 'package:moviex/features/movies/data/models/movie_credits_dto.dart';
import 'package:moviex/features/movies/data/models/movie_crew_dto.dart';
import 'package:moviex/features/movies/data/models/movie_video_dto.dart';
import 'package:moviex/features/movies/domain/entities/crew_member.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

part 'movie_dto.g.dart';

@JsonSerializable()
class MovieDto {
  final bool adult;
  final String? backdropPath;
  final int budget;
  final List<int> genreIds;
  final List<GenreDto> genres;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String? overview;
  final double popularity;
  final String? posterPath;
  final String? releaseDate;
  final int revenue;
  final int runtime;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;
  final List<MovieVideoDto> videos;
  final MovieCreditsDto? credits;

  new({
    this.adult = true,
    this.backdropPath,
    this.genreIds = const [],
    this.budget = 0,
    this.genres = const [],
    this.id = 0,
    required this.originalLanguage,
    required this.originalTitle,
    this.overview,
    this.popularity = 0.0,
    this.posterPath,
    this.releaseDate,
    this.revenue = 0,
    this.runtime = 0,
    required this.title,
    this.video = true,
    this.voteAverage = 0.0,
    this.voteCount = 0,
    this.videos = const [],
    this.credits,
  });

  factory MovieDto.fromJson(Map<String, dynamic> json) {
    if (json['videos']?['results'] != null) {
      json['videos'] = json['videos']['results'];
    }
    return _$MovieDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieDtoToJson(this);
}

extension MovieDtoMapper on MovieDto {
  Movie toMovie() {
    return Movie(
      adult: adult,
      backdropPath: backdropPath,
      genreIds: genreIds,
      budget: budget,
      genres: genres.map((g) => g.toGenre()).toList(),
      id: id,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: releaseDate,
      revenue: revenue,
      runtime: runtime,
      title: title,
      video: video,
      voteAverage: voteAverage,
      voteCount: voteCount,
      videos: videos.map((v) => v.toMovieVideo()).toList(),
      cast: credits?.cast.map((c) => c.toCastMember()).toList() ?? [],
      crew: _mapCrew(credits?.crew ?? []),
    );
  }

  List<CrewMember> _mapCrew(List<MovieCrewDto> crew) {
    final grouped = <int, CrewMember>{};

    for (final member in crew) {
      final existing = grouped[member.id];

      if (existing != null) {
        grouped[member.id] = existing.copyWith(
          jobs: {...existing.jobs, member.job}.toList(),
        );
      } else {
        grouped[member.id] = member.toCrewMember();
      }
    }

    return grouped.values.toList();
  }
}
