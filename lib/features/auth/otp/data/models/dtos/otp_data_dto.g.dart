// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpDataDtoImpl _$$OtpDataDtoImplFromJson(Map<String, dynamic> json) =>
    _$OtpDataDtoImpl(
      otpToken: json['otp_token'] as String?,
      expiredAt: json['expired_at'] as String?,
    );

Map<String, dynamic> _$$OtpDataDtoImplToJson(_$OtpDataDtoImpl instance) =>
    <String, dynamic>{
      'otp_token': instance.otpToken,
      'expired_at': instance.expiredAt,
    };
