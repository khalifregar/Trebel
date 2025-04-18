// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminAuthDtoImpl _$$AdminAuthDtoImplFromJson(Map<String, dynamic> json) =>
    _$AdminAuthDtoImpl(
      accessToken: json['access_token'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      adminId: json['admin_id'] as String?,
    );

Map<String, dynamic> _$$AdminAuthDtoImplToJson(_$AdminAuthDtoImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'email': instance.email,
      'role': instance.role,
      'admin_id': instance.adminId,
    };
