import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/playlist_pick/data/datasources/remotes/playlist_pick_api_service.dart';
import 'package:trebel/features/playlist_pick/data/models/dtos/playlist_pick_dto.dart';
import 'package:trebel/features/playlist_pick/data/models/request/playlist_pick_request.dart';
import 'package:trebel/features/playlist_pick/domain/entities/playlist_pick.dart';
import 'package:trebel/features/playlist_pick/domain/interfaces/i_playlist_pick_repository.dart';
import 'package:trebel/injection.dart';

@LazySingleton(as: IPlaylistPickRepository)
class PlaylistPickRepository implements IPlaylistPickRepository {
  final PlaylistPickApiService api = getIt<PlaylistPickApiService>();

  @override
  Future<Either<Failure, List<PlaylistPick>>> getPlaylists() async {
    try {
      final res = await api.getPlaylists();
      final body = _parse(res);
      final nestedData = body['data']?['data'] as List<dynamic>?;
      if (nestedData == null) {
        throw GeneralException(message: 'Data tidak ditemukan di response');
      }
      final playlists = nestedData
          .map((json) => PlaylistPickDto.fromJson(json).toDomain())
          .toList();
      return Right(playlists);
    } on DioException catch (e) {
      final msg = e.response?.data['message'] ?? 'Terjadi kesalahan';
      return Left(GeneralFailure(message: msg));
    } catch (e) {
      return Left(
        GeneralFailure(message: 'Terjadi kesalahan saat mengambil playlist'),
      );
    }
  }

  @override
  Future<Either<Failure, PlaylistPick>> storePlaylists(
      PlaylistPickRequest request) async {
    try {
      final res = await api.storePlaylists(request);
      final body = _parse(res);
      final data = body['data'];
      if (data == null) {
        throw GeneralException(message: 'Data tidak ditemukan di response');
      }
      final dto = PlaylistPickDto.fromJson(data);
      return Right(dto.toDomain());
    } catch (e) {
      return Left(GeneralFailure(message: 'Terjadi kesalahan'));
    }
  }

  @override
  Future<Either<Failure, PlaylistPick>> getUserPlaylists() async {
    try {
      final res = await api.getUserPlaylist();
      final body = _parse(res);
      final data = body['data'];
      if (data == null) {
        throw GeneralException(
          message: 'Data tidak ditemukan di response getPickedPlaylist',
        );
      }
      final dto = PlaylistPickDto.fromJson(data);
      return Right(dto.toDomain());
    } on GeneralException catch (e) {
      return Left(GeneralFailure(message: e.message));
    } on DioException catch (e) {
      final msg = e.response?.data['message'] ?? 'Terjadi kesalahan';
      return Left(GeneralFailure(message: msg));
    } catch (e) {
      return Left(GeneralFailure(
          message: 'Terjadi kesalahan saat memuat playlist user'));
    }
  }

  dynamic _parse(HttpResponse response) {
    if (response.data == null)
      throw GeneralException(message: 'Invalid Response');
    return response.data is String ? jsonDecode(response.data) : response.data;
  }
}
