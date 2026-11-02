import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_links.g.dart';

@JsonSerializable()
class SocialLinks({
  this.facebookId,
  this.instagramId,
  this.tiktokId,
  this.twitterId,
  this.youtubeId,
}) {
  final String? facebookId;
  final String? instagramId;
  final String? tiktokId;
  final String? twitterId;
  final String? youtubeId;

  factory SocialLinks.fromJson(Map<String, dynamic> json) =>
      _$SocialLinksFromJson(json);

  Map<String, dynamic> toJson() => _$SocialLinksToJson(this);
}
