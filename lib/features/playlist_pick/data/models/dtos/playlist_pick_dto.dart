import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trebel/features/playlist_pick/domain/entities/playlist_pick.dart';

part 'playlist_pick_dto.freezed.dart';
part 'playlist_pick_dto.g.dart';

@freezed
class PlaylistPickDto with _$PlaylistPickDto {
  const PlaylistPickDto._();

  const factory PlaylistPickDto({
    String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'imageUrl') String? imageUrl,
  }) = _PlaylistPickDto;

  factory PlaylistPickDto.fromDomain(PlaylistPick playlist) => PlaylistPickDto(
        id: playlist.id, // ✅ Tambahkan ini agar `id` ikut dari domain
        name: playlist.name,
        imageUrl: playlist.imageUrl,
      );

  PlaylistPick toDomain() => PlaylistPick(
        id: id, // ✅ Ini juga penting supaya id bisa dipakai di UI
        name: name,
        imageUrl: imageUrl,
      );

  factory PlaylistPickDto.fromJson(Map<String, Object?> json) =>
      _$PlaylistPickDtoFromJson(json);

  static List<PlaylistPick> fromJsonList(List<dynamic> list) =>
      list.map((e) => PlaylistPickDto.fromJson(e).toDomain()).toList();
}
