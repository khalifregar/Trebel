import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/otp/data/datasources/remotes/otp_api_service.dart';
import 'package:trebel/features/auth/otp/data/models/dtos/otp_response_dto.dart';
import 'package:trebel/features/auth/otp/data/models/request/otp_request.dart';
import 'package:trebel/features/auth/otp/data/models/request/otp_verify_request.dart';
import 'package:trebel/features/auth/otp/domain/entities/otp_response.dart';
import 'package:trebel/features/auth/otp/domain/interfaces/i_otp_repository.dart';
import 'package:trebel/injection.dart';

@LazySingleton(as: IOtpRepository)
class OtpRepository implements IOtpRepository {
  final OtpApiService api = getIt<OtpApiService>();

  @override
  Future<Either<Failure, OtpResponse>> sendOtp(OtpRequest request) async {
    try {
      final res = await api.sendOtp(request);
      final body = _parse(res);

      final nestedData = body['data'];
      if (nestedData == null) {
        throw GeneralException(message: 'Data tidak ditemukan saat kirim OTP');
      }

      return Right(OtpResponseDto.fromJson(body).toDomain());
    } on DioException catch (e) {
      final msg =
          e.response?.data['message'] ?? 'Terjadi kesalahan saat mengirim OTP';
      return Left(GeneralFailure(message: msg));
    } catch (e) {
      return Left(
          GeneralFailure(message: 'Terjadi kesalahan pada proses sendOtp'));
    }
  }

  @override
  Future<Either<Failure, OtpResponse>> resendOtp(OtpRequest request) async {
    try {
      final res = await api.resendOtp(request);
      final body = _parse(res);

      final nestedData = body['data'];
      if (nestedData == null) {
        throw GeneralException(message: 'Data tidak ditemukan saat resend OTP');
      }

      return Right(OtpResponseDto.fromJson(body).toDomain());
    } on DioException catch (e) {
      final msg =
          e.response?.data['message'] ?? 'Terjadi kesalahan saat resend OTP';
      return Left(GeneralFailure(message: msg));
    } catch (e) {
      return Left(
          GeneralFailure(message: 'Terjadi kesalahan pada proses resendOtp'));
    }
  }

  @override
  Future<Either<Failure, Unit>> verifyOtp(OtpVerifyRequest request) async {
    try {
      final res = await api.verifyOtp(request);
      final body = _parse(res);

      final message = body['message'];
      log('✅ OTP Verifikasi berhasil: $message');

      return const Right(unit);
    } on DioException catch (e) {
      final msg =
          e.response?.data['message'] ?? 'Terjadi kesalahan saat verifikasi OTP';
      return Left(GeneralFailure(message: msg));
    } catch (e) {
      return Left(
          GeneralFailure(message: 'Terjadi kesalahan pada proses verifyOtp'));
    }
  }

  dynamic _parse(HttpResponse response) {
    if (response.data == null) {
      throw GeneralException(message: 'Invalid Response');
    }
    return response.data is String ? jsonDecode(response.data) : response.data;
  }
}
