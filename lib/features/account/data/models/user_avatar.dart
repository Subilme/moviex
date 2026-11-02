import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_avatar.g.dart';

@JsonSerializable()
class Gravatar({this.hash}) {
  final String? hash;

  factory Gravatar.fromJson(Map<String, dynamic> json) =>
      _$GravatarFromJson(json);

  Map<String, dynamic> toJson() => _$GravatarToJson(this);
}

@JsonSerializable()
class TmdbAvatar({this.avatarPath}) {
  final String? avatarPath;

  factory TmdbAvatar.fromJson(Map<String, dynamic> json) =>
      _$TmdbAvatarFromJson(json);

  Map<String, dynamic> toJson() => _$TmdbAvatarToJson(this);
}

@JsonSerializable()
class UserAvatar({this.gravatar, this.tmdb}) {
  final Gravatar? gravatar;
  final TmdbAvatar? tmdb;

  factory UserAvatar.fromJson(Map<String, dynamic> json) =>
      _$UserAvatarFromJson(json);

  Map<String, dynamic> toJson() => _$UserAvatarToJson(this);

  String? get avatarUrl => tmdb?.avatarPath?.isNotEmpty ?? false
      ? "https://image.tmdb.org/t/p/original${tmdb?.avatarPath}"
      : gravatar?.hash?.isNotEmpty ?? false
      ? "https://gravatar.com/avatar/${gravatar?.hash}"
      : null;
}
