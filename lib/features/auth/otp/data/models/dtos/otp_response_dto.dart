import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trebel/features/auth/otp/domain/entities/otp_response.dart';
import 'otp_data_dto.dart';

part 'otp_response_dto.freezed.dart';
part 'otp_response_dto.g.dart';

@freezed
class OtpResponseDto with _$OtpResponseDto {
  const OtpResponseDto._();

  const factory OtpResponseDto({
    String? message,
    OtpDataDto? data,
  }) = _OtpResponseDto;

  factory OtpResponseDto.fromDomain(OtpResponse otpResponse) => OtpResponseDto(
        message: otpResponse.message,
        data: otpResponse.data == null ? null : OtpDataDto.fromDomain(otpResponse.data!),
      );

  OtpResponse toDomain() => OtpResponse(
        message: message,
        data: data?.toDomain(),
      );

  factory OtpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OtpResponseDtoFromJson(json);

  static List<OtpResponse> fromJsonList(List<dynamic> list) =>
      list.map((e) => OtpResponseDto.fromJson(e).toDomain()).toList();
}
