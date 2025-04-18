import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trebel/features/auth/domain/entities/admin.dart';

part 'admin_auth_dto.freezed.dart';
part 'admin_auth_dto.g.dart';

@freezed
class AdminAuthDto with _$AdminAuthDto {
  const AdminAuthDto._();

  const factory AdminAuthDto({
    @JsonKey(name: 'access_token') String? accessToken,
    String? email,
    String? role,
    @JsonKey(name: 'admin_id') String? adminId,
  }) = _AdminAuthDto;

  factory AdminAuthDto.fromDomain(Admin admin) {
    return AdminAuthDto(
      accessToken: admin.accessToken,
      email: admin.email,
      role: admin.role,
      adminId: admin.id,
    );
  }

  Admin toDomain() {
    return Admin(
      accessToken: accessToken,
      email: email,
      role: role,
      id: adminId,
    );
  }

  factory AdminAuthDto.fromJson(Map<String, Object?> json) =>
      _$AdminAuthDtoFromJson(json);

  static List<Admin> fromJsonList(List<dynamic> list) {
    return list
        .map(
          (e) => AdminAuthDto.fromJson(e as Map<String, dynamic>).toDomain(),
        )
        .toList();
  }
}
