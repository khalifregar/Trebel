import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_pick_request.freezed.dart';
part 'playlist_pick_request.g.dart';

@freezed
class PlaylistPickRequest with _$PlaylistPickRequest {
  factory PlaylistPickRequest({
    String? id, // ✅ Tambahkan id jika API membutuhkan referensi
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'imageUrl') String? imageUrl,
  }) = _PlaylistPickRequest;

  factory PlaylistPickRequest.fromJson(Map<String, dynamic> json) =>
      _$PlaylistPickRequestFromJson(json);
}
