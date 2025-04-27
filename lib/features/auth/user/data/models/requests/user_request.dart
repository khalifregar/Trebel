import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_request.freezed.dart';
part 'user_request.g.dart';

@freezed
class UserRequest with _$UserRequest {
  factory UserRequest({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? email,
    @JsonKey(name: 'username') String? userName,
    @JsonKey(name: 'access_token') String? accessToken,
  }) = _UserRequest;

    factory UserRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRequestFromJson(json);
}
