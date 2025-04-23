part of 'playlist_pick_bloc.dart';

@freezed
class PlaylistPickEvent with _$PlaylistPickEvent {
  const factory PlaylistPickEvent.getRequested() = GetPlaylistPickRequested;
  const factory PlaylistPickEvent.searchRequested(String? query) = SearchPlaylistPickRequested;
}
