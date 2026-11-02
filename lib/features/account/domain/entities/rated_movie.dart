import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

part 'rated_movie.freezed.dart';

@freezed
sealed class const RatedMovie._() with _$RatedMovie {
  const factory({required Movie movie, required double rating}) = _RatedMovie;
}
