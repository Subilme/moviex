// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_avatar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gravatar _$GravatarFromJson(Map<String, dynamic> json) =>
    Gravatar(hash: json['hash'] as String?);

Map<String, dynamic> _$GravatarToJson(Gravatar instance) => <String, dynamic>{
  'hash': ?instance.hash,
};

TmdbAvatar _$TmdbAvatarFromJson(Map<String, dynamic> json) =>
    TmdbAvatar(avatarPath: json['avatar_path'] as String?);

Map<String, dynamic> _$TmdbAvatarToJson(TmdbAvatar instance) =>
    <String, dynamic>{'avatar_path': ?instance.avatarPath};

UserAvatar _$UserAvatarFromJson(Map<String, dynamic> json) => UserAvatar(
  gravatar: json['gravatar'] == null
      ? null
      : Gravatar.fromJson(json['gravatar'] as Map<String, dynamic>),
  tmdb: json['tmdb'] == null
      ? null
      : TmdbAvatar.fromJson(json['tmdb'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserAvatarToJson(UserAvatar instance) =>
    <String, dynamic>{
      'gravatar': ?instance.gravatar?.toJson(),
      'tmdb': ?instance.tmdb?.toJson(),
    };
