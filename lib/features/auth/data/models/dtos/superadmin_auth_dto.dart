import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trebel/features/auth/domain/entities/admin.dart';
import 'package:trebel/features/auth/domain/entities/superadmin.dart';

part 'superadmin_auth_dto.freezed.dart';
part 'superadmin_auth_dto.g.dart';

@freezed
class SuperadminAuthDto with _$SuperadminAuthDto {
  const SuperadminAuthDto._();

  const factory SuperadminAuthDto({
    @JsonKey(name: 'access_token') String? accessToken,
    String? email,
    String? role,
    @JsonKey(name: 'superadmin_id') String? superadminId,
  }) = _SuperadminAuthDto;

  factory SuperadminAuthDto.fromDomain(Superadmin superAdmin) {
    return SuperadminAuthDto(
      accessToken: superAdmin.accessToken,
      email: superAdmin.email,
      role: superAdmin.role,
      superadminId: superAdmin.id,
    );
  }

  Superadmin toDomain() {
    return Superadmin(
      accessToken: accessToken,
      email: email,
      role: role,
      id: superadminId,
    );
  }

  factory SuperadminAuthDto.fromJson(Map<String, Object?> json) =>
      _$SuperadminAuthDtoFromJson(json);

  static List<Superadmin> fromJsonList(List<dynamic> list) {
    return list
        .map(
          (e) =>
              SuperadminAuthDto.fromJson(e as Map<String, dynamic>).toDomain(),
        )
        .toList();
  }
}
