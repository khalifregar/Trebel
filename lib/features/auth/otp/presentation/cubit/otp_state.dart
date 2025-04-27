part of 'otp_cubit.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState.initial() = _Initial;
  const factory OtpState.loadInProgress() = _LoadInProgress;
  const factory OtpState.loadFailure(Failure failure) = _LoadFailure;
  
  const factory OtpState.sendOtpSuccess(OtpResponse response) = _SendOtpSuccess;
  const factory OtpState.resendOtpSuccess(OtpResponse response) = _ResendOtpSuccess;
  const factory OtpState.verifyOtpSuccess() = _VerifyOtpSuccess;
}
