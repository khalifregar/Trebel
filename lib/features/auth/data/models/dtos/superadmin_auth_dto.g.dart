// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'superadmin_auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuperadminAuthDtoImpl _$$SuperadminAuthDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SuperadminAuthDtoImpl(
      accessToken: json['access_token'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      superadminId: json['superadmin_id'] as String?,
    );

Map<String, dynamic> _$$SuperadminAuthDtoImplToJson(
        _$SuperadminAuthDtoImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'email': instance.email,
      'role': instance.role,
      'superadmin_id': instance.superadminId,
    };
