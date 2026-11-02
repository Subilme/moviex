import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/account/data/models/account_movie_dto.dart';

part 'account_movie_list_dto.g.dart';

@JsonSerializable()
class AccountMovieListDto {
  final int page;
  final List<AccountMovieDto> results;
  final int totalPages;
  final int totalResults;

  new({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory AccountMovieListDto.fromJson(Map<String, dynamic> json) =>
      _$AccountMovieListDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AccountMovieListDtoToJson(this);
}
