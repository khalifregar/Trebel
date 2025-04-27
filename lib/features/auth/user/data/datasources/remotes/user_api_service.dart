import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trebel/features/auth/user/data/models/requests/user_request.dart';

part 'user_api_service.g.dart';

@RestApi()
abstract class UserApiService {
  factory UserApiService(Dio dio, {String? baseUrl}) = _UserApiService;

  @GET('/{user_id}/trebel/profile')
  Future<HttpResponse<dynamic>> getUserProfile(
    @Path('user_id') String userId,
  );

  @POST('/trebel/register')
  Future<HttpResponse> storeUser(
    @Body() UserRequest request,
  );

  @POST('/{user_id}/trebel/login')
  Future<HttpResponse> loginUser(
    @Path('user_id') String userId,
    @Body() UserRequest request,
  );

  @POST('/logout')
  Future<HttpResponse> logoutUser(
    @Body() UserRequest request,
  );

  @DELETE('/{user_id}/trebel/delete')
  Future<HttpResponse> deleteUser(
    @Path('user_id') String userId,
  );

  @PATCH('/{user_id}/trebel/profile')
  Future<HttpResponse> updateProfile(
    @Path('user_id') String userId,
  );
}
