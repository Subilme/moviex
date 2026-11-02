// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  username: json['username'] as String,
  description: json['description'] as String?,
  avatar: json['avatar'] == null
      ? null
      : UserAvatar.fromJson(json['avatar'] as Map<String, dynamic>),
  iso6391: json['iso_639_1'] as String?,
  regionalSettings: json['regional_settings'] == null
      ? null
      : UserRegionalSettings.fromJson(
          json['regional_settings'] as Map<String, dynamic>,
        ),
  socialLinks: json['social_links'] == null
      ? null
      : SocialLinks.fromJson(json['social_links'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'username': instance.username,
  'description': ?instance.description,
  'avatar': ?instance.avatar?.toJson(),
  'iso_639_1': ?instance.iso6391,
  'regional_settings': ?instance.regionalSettings?.toJson(),
  'social_links': ?instance.socialLinks?.toJson(),
};
