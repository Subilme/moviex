// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialLinks _$SocialLinksFromJson(Map<String, dynamic> json) => SocialLinks(
  facebookId: json['facebook_id'] as String?,
  instagramId: json['instagram_id'] as String?,
  tiktokId: json['tiktok_id'] as String?,
  twitterId: json['twitter_id'] as String?,
  youtubeId: json['youtube_id'] as String?,
);

Map<String, dynamic> _$SocialLinksToJson(SocialLinks instance) =>
    <String, dynamic>{
      'facebook_id': ?instance.facebookId,
      'instagram_id': ?instance.instagramId,
      'tiktok_id': ?instance.tiktokId,
      'twitter_id': ?instance.twitterId,
      'youtube_id': ?instance.youtubeId,
    };
