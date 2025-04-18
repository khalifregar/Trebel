// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAuthRequestImpl _$$UserAuthRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAuthRequestImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
      accessToken: json['access_token'] as String?,
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$$UserAuthRequestImplToJson(
        _$UserAuthRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'access_token': instance.accessToken,
      'user_id': instance.userId,
    };
