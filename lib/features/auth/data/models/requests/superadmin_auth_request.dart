import 'package:freezed_annotation/freezed_annotation.dart';

part 'superadmin_auth_request.freezed.dart';
part 'superadmin_auth_request.g.dart';

@freezed
class SuperadminAuthRequest with _$SuperadminAuthRequest {
  factory SuperadminAuthRequest({
    String? email,
    String? password,
    String? name,
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'superadmin_id') String? superadminId,
  }) = _SuperadminAuthRequest;

  factory SuperadminAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$SuperadminAuthRequestFromJson(json);
}
