import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/movies/data/models/movie_dto.dart';
import 'package:moviex/features/movies/domain/entities/movie_page.dart';

part 'movie_list_dto.g.dart';

@JsonSerializable()
class MovieListDto {
  final int page;
  final List<MovieDto> results;
  final int totalPages;
  final int totalResults;

  new({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory MovieListDto.fromJson(Map<String, dynamic> json) =>
      _$MovieListDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieListDtoToJson(this);
}

extension MovieListDtoMapper on MovieListDto {
  MoviePage toMoviePage() => MoviePage(
    movies: results.map((e) => e.toMovie()).toList(),
    page: page,
    totalPages: totalPages,
    totalResults: totalResults,
  );
}
