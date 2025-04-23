part of 'playlist_pick_bloc.dart';

@freezed
class PlaylistPickState with _$PlaylistPickState {
  const factory PlaylistPickState.initial() = PlaylistPickInitial;
  const factory PlaylistPickState.loading() = PlaylistPickLoading;
  const factory PlaylistPickState.loaded(List<PlaylistPick> data) = PlaylistPickLoaded;
  const factory PlaylistPickState.searched(List<PlaylistPick> result) = PlaylistPickSearched;
  const factory PlaylistPickState.failure(String message) = PlaylistPickFailure;
}
