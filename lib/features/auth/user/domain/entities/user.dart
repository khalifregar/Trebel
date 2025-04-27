import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? email,
    @JsonKey(name: 'username') String? userName,
    @JsonKey(name: 'access_token') String? accessToken,
  }) = _User;
}
