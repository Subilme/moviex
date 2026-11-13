import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre.freezed.dart';

@freezed
sealed class const Genre._() with _$Genre {
  const factory({required int id, required String name}) = _Genre;
}
