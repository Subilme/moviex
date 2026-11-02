import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_regional_settings.g.dart';

@JsonSerializable()
class UserRegionalSettings({
  this.language,
  this.fallbackLanguage,
  this.country,
  this.timezone,
}) {
  final String? language;
  final String? fallbackLanguage;
  final String? country;
  final String? timezone;

  factory UserRegionalSettings.fromJson(Map<String, dynamic> json) =>
      _$UserRegionalSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$UserRegionalSettingsToJson(this);
}
