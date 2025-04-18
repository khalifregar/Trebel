// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAuthDtoImpl _$$UserAuthDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserAuthDtoImpl(
      accessToken: json['access_token'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$$UserAuthDtoImplToJson(_$UserAuthDtoImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'email': instance.email,
      'role': instance.role,
      'user_id': instance.userId,
    };
