// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpResponseDtoImpl _$$OtpResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$OtpResponseDtoImpl(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OtpDataDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtpResponseDtoImplToJson(
        _$OtpResponseDtoImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
