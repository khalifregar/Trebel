import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trebel/features/auth/data/models/requests/user_auth_request.dart';

part 'auth_user_api_service.g.dart';

@RestApi()
abstract class UserApiService {
  factory UserApiService(Dio dio, {String? baseUrl}) = _UserApiService;

  @POST('/auth/user/login')
  Future<HttpResponse> login(@Body() UserAuthRequest request);

  @POST('/auth/user/register')
  Future<HttpResponse> register(@Body() UserAuthRequest request);

  @GET('/auth/user/me')
  Future<HttpResponse> getMe();
}
