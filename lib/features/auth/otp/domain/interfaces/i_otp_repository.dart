import 'package:dartz/dartz.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/otp/data/models/request/otp_request.dart';
import 'package:trebel/features/auth/otp/data/models/request/otp_verify_request.dart';
import 'package:trebel/features/auth/otp/domain/entities/otp_response.dart';

abstract class IOtpRepository {
  Future<Either<Failure, OtpResponse>> sendOtp(OtpRequest request);

  Future<Either<Failure, OtpResponse>> resendOtp(OtpRequest request);

  Future<Either<Failure, Unit>> verifyOtp(OtpVerifyRequest request);
}
