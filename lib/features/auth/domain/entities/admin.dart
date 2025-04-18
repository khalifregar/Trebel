import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin.freezed.dart';

@freezed
class Admin with _$Admin {
  const factory Admin({
    @JsonKey(name: 'admin_id') String? id,
    @JsonKey(name: 'access_token') String? accessToken,
    String? email,
    String? role,
  }) = _Admin;
}
