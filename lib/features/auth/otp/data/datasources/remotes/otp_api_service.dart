import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trebel/features/auth/otp/data/models/request/otp_request.dart';
import 'package:trebel/features/auth/otp/data/models/request/otp_verify_request.dart';

part 'otp_api_service.g.dart';

@RestApi()
abstract class OtpApiService {
  factory OtpApiService(Dio dio, {String? baseUrl}) = _OtpApiService;

  @POST('/api/otp/send')
  Future<HttpResponse> sendOtp(
    @Body() OtpRequest request,
  );

  @POST('/api/otp/verify')
  Future<HttpResponse> verifyOtp(
    @Body() OtpVerifyRequest request,
  );

  @POST('/api/otp/resend')
  Future<HttpResponse> resendOtp(
    @Body() OtpRequest request,
  );
}
