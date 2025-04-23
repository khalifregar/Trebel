import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trebel/features/playlist_pick/data/models/request/playlist_pick_request.dart';

part 'playlist_pick_api_service.g.dart';

@RestApi()
abstract class PlaylistPickApiService {
  factory PlaylistPickApiService(Dio dio, {String? baseUrl}) =
      _PlaylistPickApiService;

  @GET('/playlists/select-options')
  Future<HttpResponse> getPlaylists();

  @POST('/playlists/user-playlists')
  Future<HttpResponse> storePlaylists(@Body() PlaylistPickRequest request);

  @GET('/playlists/user-playlists/me')
  Future<HttpResponse> getUserPlaylist();
}
