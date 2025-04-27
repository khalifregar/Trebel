import 'package:freezed_annotation/freezed_annotation.dart';
import 'otp_data.dart';

part 'otp_response.freezed.dart';

@freezed
class OtpResponse with _$OtpResponse {
  const factory OtpResponse({
    String? message,
    OtpData? data,
  }) = _OtpResponse;
}
