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
    @JsonKey(name: 'username') String? userName,
    String? role,
    @JsonKey(name: 'user_id') String? userId,
  }) = _UserAuthDto;

  factory UserAuthDto.fromDomain(User user) => UserAuthDto(
        accessToken: user.accessToken,
        email: user.email,
        userName: user.userName,
        role: user.role,
        userId: user.id,
      );

  User toDomain() => User(
        accessToken: accessToken,
        email: email,
        userName: userName,
        role: role,
        id: userId,
      );

  factory UserAuthDto.fromJson(Map<String, Object?> json) =>
      _$UserAuthDtoFromJson(json);

  static List<User> fromJsonList(List<dynamic> list) =>
      list.map((e) => UserAuthDto.fromJson(e).toDomain()).toList();
}

