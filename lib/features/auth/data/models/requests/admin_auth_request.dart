import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_auth_request.freezed.dart';
part 'admin_auth_request.g.dart';

@freezed
class AdminAuthRequest with _$AdminAuthRequest {
  factory AdminAuthRequest({
    String? email,
    String? password,
    String? name,
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'admin_id') String? adminId,
  }) = _AdminAuthRequest;

  factory AdminAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminAuthRequestFromJson(json);
}
