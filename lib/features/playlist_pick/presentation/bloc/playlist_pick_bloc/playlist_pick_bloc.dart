import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';

import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/playlist_pick/domain/entities/playlist_pick.dart';
import 'package:trebel/features/playlist_pick/domain/interfaces/i_playlist_pick_repository.dart';

part 'playlist_pick_bloc.freezed.dart';
part 'playlist_pick_event.dart';
part 'playlist_pick_state.dart';

@injectable
class PlaylistPickBloc extends Bloc<PlaylistPickEvent, PlaylistPickState> {
  final IPlaylistPickRepository _repo;

  List<PlaylistPick> _originalData = [];

  PlaylistPickBloc(this._repo) : super(const PlaylistPickState.initial()) {
    on<GetPlaylistPickRequested>((event, emit) async {
      emit(const PlaylistPickState.loading());
      final result = await _repo.getPlaylists();
      result.fold(
        (failure) => emit(PlaylistPickState.failure(
            failure.message ?? 'Gagal mengambil data playlist')),
        (data) {
          _originalData = data;
          emit(PlaylistPickState.loaded(data));
        },
      );
    });

    on<SearchPlaylistPickRequested>((event, emit) {
      final query = (event.query ?? '').toLowerCase();
      final filtered = _originalData.where((item) {
        return (item.name ?? '').toLowerCase().contains(query);
      }).toList();
      if (filtered.isEmpty) {
        emit(const PlaylistPickState.failure('Tidak ditemukan hasil'));
      } else {
        emit(PlaylistPickState.searched(filtered));
      }
    });
  }
}
