import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'user_id') String? id,
    @JsonKey(name: 'access_token') String? accessToken,
    String? email,
    String? role,
  }) = _User;
}
