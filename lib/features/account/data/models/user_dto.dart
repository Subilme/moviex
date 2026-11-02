import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviex/features/account/data/models/social_links.dart';
import 'package:moviex/features/account/data/models/user_avatar.dart';
import 'package:moviex/features/account/data/models/user_regional_settings.dart';
import 'package:moviex/features/account/domain/entities/user.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto({
  required this.id,
  required this.name,
  required this.username,
  this.description,
  this.avatar,
  this.iso6391,
  this.regionalSettings,
  this.socialLinks,
}) {
  final int id;
  final String name;
  final String username;
  final String? description;
  final UserAvatar? avatar;
  @JsonKey(name: "iso_639_1")
  final String? iso6391;
  final UserRegionalSettings? regionalSettings;
  final SocialLinks? socialLinks;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}

extension UserDtoMapper on UserDto {
  User toEntity() => User(
    id: id,
    name: name,
    description: description,
    username: username,
    avatarUrl: avatar?.avatarUrl,
    language: iso6391,
    country: regionalSettings?.country,
  );
}
