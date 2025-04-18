import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trebel/features/auth/data/models/requests/superadmin_auth_request.dart';

part 'auth_superadmin_api_service.g.dart';

@RestApi()
abstract class SuperAdminApiService {
  factory SuperAdminApiService(Dio dio, {String? baseUrl}) = _SuperAdminApiService;

  @POST('/auth/superadmin/login')
  Future<HttpResponse> login(@Body() SuperadminAuthRequest request);

  @POST('/auth/superadmin/register')
  Future<HttpResponse> register(@Body() SuperadminAuthRequest request);

  @GET('/auth/superadmin/me')
  Future<HttpResponse> getMe();
}
