// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminAuthRequestImpl _$$AdminAuthRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminAuthRequestImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
      accessToken: json['access_token'] as String?,
      adminId: json['admin_id'] as String?,
    );

Map<String, dynamic> _$$AdminAuthRequestImplToJson(
        _$AdminAuthRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'access_token': instance.accessToken,
      'admin_id': instance.adminId,
    };
