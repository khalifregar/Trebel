import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trebel/features/auth/data/models/requests/admin_auth_request.dart';

part 'auth_admin_api_service.g.dart';

@RestApi()
abstract class AdminApiService {
  factory AdminApiService(Dio dio, {String? baseUrl}) = _AdminApiService;

  @POST('/auth/admin/login')
  Future<HttpResponse> login(@Body() AdminAuthRequest request);

  @POST('/auth/admin/register')
  Future<HttpResponse> register(@Body() AdminAuthRequest request);

  @GET('/auth/admin/me')
  Future<HttpResponse> getMe();
}
