// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRequestImpl _$$UserRequestImplFromJson(Map<String, dynamic> json) =>
    _$UserRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      email: json['email'] as String?,
      userName: json['username'] as String?,
      accessToken: json['access_token'] as String?,
    );

Map<String, dynamic> _$$UserRequestImplToJson(_$UserRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'email': instance.email,
      'username': instance.userName,
      'access_token': instance.accessToken,
    };
