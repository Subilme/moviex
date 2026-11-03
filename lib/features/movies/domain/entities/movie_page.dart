import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

part 'movie_page.freezed.dart';

@freezed
sealed class const MoviePage._() with _$MoviePage {
  const factory({
    required List<Movie> movies,
    required int page,
    required int totalPages,
    required int totalResults,
  }) = _MoviePage;

  bool get hasMore => page < totalPages;
}
