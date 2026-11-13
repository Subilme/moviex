import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/movies/domain/entities/movie_video.dart';

part 'movie_video_dto.g.dart';

@JsonSerializable()
class MovieVideoDto({
  required this.name,
  required this.key,
  this.site,
  this.size = 0,
  this.type,
  this.official = true,
  required this.publishedAt,
  required this.id,
}) {
  final String name;
  final String key;
  final String? site;
  final int size;
  final String? type;
  final bool official;
  final DateTime publishedAt;
  final String id;

  factory MovieVideoDto.fromJson(Map<String, dynamic> json) =>
      _$MovieVideoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MovieVideoDtoToJson(this);
}

extension MovieVideoDtoMapper on MovieVideoDto {
  MovieVideo toMovieVideo() => MovieVideo(
    name: name,
    key: key,
    site: VideoSite.fromJson(site ?? ""),
    size: size,
    type: VideoType.fromJson(type ?? ""),
    official: official,
    publishedAt: publishedAt,
    id: id,
  );
}
