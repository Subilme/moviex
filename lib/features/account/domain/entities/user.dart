import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
sealed class const User._() with _$User {
  const factory({
    required int id,
    required String username,
    String? name,
    String? description,
    String? avatarUrl,
    String? language,
    String? country,
  }) = _User;
}
