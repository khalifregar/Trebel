import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_pick.freezed.dart';

@freezed
class PlaylistPick with _$PlaylistPick {
  const factory PlaylistPick({
    String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'imageUrl') String? imageUrl,
  }) = _PlaylistPick;
}
