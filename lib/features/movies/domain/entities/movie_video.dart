import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_video.freezed.dart';

enum VideoSite {
  youtube,
  unknown;

  static VideoSite fromJson(String value) => switch (value.toLowerCase()) {
    'youtube' => youtube,
    _ => unknown,
  };
}

enum VideoType {
  trailer,
  teaser,
  clip,
  featurette,
  behindTheScenes,
  bloopers,
  openingCredits,
  unknown;

  static VideoType fromJson(String value) => switch (value.toLowerCase()) {
    'trailer' => trailer,
    'teaser' => teaser,
    'clip' => clip,
    'featurette' => featurette,
    'behind the scenes' => behindTheScenes,
    'bloopers' => bloopers,
    'opening credits' => openingCredits,
    _ => unknown,
  };
}

@freezed
sealed class const MovieVideo._() with _$MovieVideo {
  const factory({
    required String name,
    required String key,
    @Default(VideoSite.unknown) VideoSite site,
    required int size,
    @Default(VideoType.unknown) VideoType type,
    required bool official,
    required DateTime publishedAt,
    required String id,
  }) = _MovieVideo;

  Uri? get videoUri {
    return switch (site) {
      VideoSite.youtube => Uri.https('www.youtube.com', '/watch', {'v': key}),
      VideoSite.unknown => null,
    };
  }
}
