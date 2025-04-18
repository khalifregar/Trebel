import 'package:freezed_annotation/freezed_annotation.dart';

part 'superadmin.freezed.dart';

@freezed
class Superadmin with _$Superadmin {
  const factory Superadmin({
    @JsonKey(name: 'superadmin_id') String? id,
    @JsonKey(name: 'access_token') String? accessToken,
    String? email,
    String? role,
  }) = _Superadmin;
}
