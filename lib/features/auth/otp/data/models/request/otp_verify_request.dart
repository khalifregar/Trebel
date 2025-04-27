import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_verify_request.freezed.dart';
part 'otp_verify_request.g.dart';

@freezed
class OtpVerifyRequest with _$OtpVerifyRequest {
  factory OtpVerifyRequest({
    String? phone,
    String? otp,
  }) = _OtpVerifyRequest;

  factory OtpVerifyRequest.fromJson(Map<String, dynamic> json) =>
      _$OtpVerifyRequestFromJson(json);
}
