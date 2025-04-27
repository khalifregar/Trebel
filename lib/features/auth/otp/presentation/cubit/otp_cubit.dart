import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/otp/data/models/request/otp_request.dart';
import 'package:trebel/features/auth/otp/data/models/request/otp_verify_request.dart';
import 'package:trebel/features/auth/otp/domain/entities/otp_response.dart';
import 'package:trebel/features/auth/otp/domain/interfaces/i_otp_repository.dart';

part 'otp_cubit.freezed.dart';
part 'otp_state.dart';

@injectable
class OtpCubit extends Cubit<OtpState> {
  final IOtpRepository otpRepository;

  OtpCubit(this.otpRepository) : super(const OtpState.initial());

  Future<void> sendOtp(OtpRequest request) async {
    try {
      emit(const OtpState.loadInProgress());
      final result = await otpRepository.sendOtp(request);
      result.fold(
        (failure) => emit(OtpState.loadFailure(failure)),
        (data) => emit(OtpState.sendOtpSuccess(data)),
      );
    } catch (e) {
      emit(OtpState.loadFailure(
          ServerFailure(message: e.toString(), errorCode: 400)));
    }
  }

  Future<void> resendOtp(OtpRequest request) async {
    try {
      emit(const OtpState.loadInProgress());
      final result = await otpRepository.resendOtp(request);
      result.fold(
        (failure) => emit(OtpState.loadFailure(failure)),
        (data) => emit(OtpState.resendOtpSuccess(data)),
      );
    } catch (e) {
      emit(OtpState.loadFailure(
          ServerFailure(message: e.toString(), errorCode: 400)));
    }
  }

  Future<void> verifyOtp(OtpVerifyRequest request) async {
    try {
      emit(const OtpState.loadInProgress());
      final result = await otpRepository.verifyOtp(request);
      result.fold(
        (failure) => emit(OtpState.loadFailure(failure)),
        (_) => emit(const OtpState.verifyOtpSuccess()),
      );
    } catch (e) {
      emit(OtpState.loadFailure(
          ServerFailure(message: e.toString(), errorCode: 400)));
    }
  }
}
