import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_auth_request.freezed.dart';
part 'user_auth_request.g.dart';

@freezed
class UserAuthRequest with _$UserAuthRequest {
  factory UserAuthRequest({
    String? email,
    String? password,
    String? name,
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'user_id') String? userId,
  }) = _UserAuthRequest;

  factory UserAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$UserAuthRequestFromJson(json);
}
