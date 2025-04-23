import 'package:dartz/dartz.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/playlist_pick/data/models/request/playlist_pick_request.dart';
import 'package:trebel/features/playlist_pick/domain/entities/playlist_pick.dart';

abstract class IPlaylistPickRepository {
Future<Either<Failure, List<PlaylistPick>>> getPlaylists();

  Future<Either<Failure, PlaylistPick>> storePlaylists(
      PlaylistPickRequest request);
  Future<Either<Failure, PlaylistPick>> getUserPlaylists();
}
