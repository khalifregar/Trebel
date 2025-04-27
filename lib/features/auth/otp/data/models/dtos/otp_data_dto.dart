import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trebel/features/auth/otp/domain/entities/otp_data.dart';


part 'otp_data_dto.freezed.dart';
part 'otp_data_dto.g.dart';

@freezed
class OtpDataDto with _$OtpDataDto {
  const OtpDataDto._();

  const factory OtpDataDto({
    @JsonKey(name: 'otp_token') String? otpToken,
    @JsonKey(name: 'expired_at') String? expiredAt,
  }) = _OtpDataDto;

  factory OtpDataDto.fromDomain(OtpData otpData) => OtpDataDto(
        otpToken: otpData.otpToken,
        expiredAt: otpData.expiredAt,
      );

  OtpData toDomain() => OtpData(
        otpToken: otpToken,
        expiredAt: expiredAt,
      );

  factory OtpDataDto.fromJson(Map<String, dynamic> json) =>
      _$OtpDataDtoFromJson(json);

  static List<OtpData> fromJsonList(List<dynamic> list) =>
      list.map((e) => OtpDataDto.fromJson(e).toDomain()).toList();
}
