// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_regional_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRegionalSettings _$UserRegionalSettingsFromJson(
  Map<String, dynamic> json,
) => UserRegionalSettings(
  language: json['language'] as String?,
  fallbackLanguage: json['fallback_language'] as String?,
  country: json['country'] as String?,
  timezone: json['timezone'] as String?,
);

Map<String, dynamic> _$UserRegionalSettingsToJson(
  UserRegionalSettings instance,
) => <String, dynamic>{
  'language': ?instance.language,
  'fallback_language': ?instance.fallbackLanguage,
  'country': ?instance.country,
  'timezone': ?instance.timezone,
};
