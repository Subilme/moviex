import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/movies/domain/entities/genre.dart';

part 'genre_dto.g.dart';

@JsonSerializable()
class GenreDto({required this.id, required this.name}) {
  final int id;
  final String name;

  factory GenreDto.fromJson(Map<String, dynamic> json) =>
      _$GenreDtoFromJson(json);

  Map<String, dynamic> toJson() => _$GenreDtoToJson(this);
}

extension GenreDtoMapper on GenreDto {
  Genre toGenre() => Genre(id: id, name: name);
}
