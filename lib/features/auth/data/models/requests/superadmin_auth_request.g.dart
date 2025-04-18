// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'superadmin_auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuperadminAuthRequestImpl _$$SuperadminAuthRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SuperadminAuthRequestImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
      accessToken: json['access_token'] as String?,
      superadminId: json['superadmin_id'] as String?,
    );

Map<String, dynamic> _$$SuperadminAuthRequestImplToJson(
        _$SuperadminAuthRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'access_token': instance.accessToken,
      'superadmin_id': instance.superadminId,
    };
