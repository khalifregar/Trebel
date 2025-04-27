import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_data.freezed.dart';

@freezed
class OtpData with _$OtpData {
  const factory OtpData({
    @JsonKey(name: 'otp_token') String? otpToken,
    @JsonKey(name: 'expired_at') String? expiredAt,
  }) = _OtpData;
}
