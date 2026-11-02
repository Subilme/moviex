import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/movies/data/models/movie_dto.dart';

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
