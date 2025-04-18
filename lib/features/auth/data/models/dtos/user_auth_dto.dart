import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trebel/features/auth/domain/entities/user.dart';

part 'user_auth_dto.freezed.dart';
part 'user_auth_dto.g.dart';

@freezed
class UserAuthDto with _$UserAuthDto {
  const UserAuthDto._();

  const factory UserAuthDto({
    @JsonKey(name: 'access_token') String? accessToken,
    String? email,
    String? role,
    @JsonKey(name: 'user_id') String? userId,
  }) = _UserAuthDto;

  factory UserAuthDto.fromDomain(User user) {
    return UserAuthDto(
      accessToken: user.accessToken,
      email: user.email,
      role: user.role,
      userId: user.id,
    );
  }

  User toDomain() {
    debugPrint('🧾 Mapping DTO ke domain, token: $accessToken');
    return User(
      accessToken: accessToken,
      email: email,
      role: role,
      id: userId,
    );
  }

  factory UserAuthDto.fromJson(Map<String, Object?> json) =>
      _$UserAuthDtoFromJson(json);

  static List<User> fromJsonList(List<dynamic> list) {
    return list
        .map(
          (e) =>
              UserAuthDto.fromJson(e as Map<String, dynamic>).toDomain(),
        )
        .toList();
  }
}
