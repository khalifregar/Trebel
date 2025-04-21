import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'playlist_pick_event.dart';
part 'playlist_pick_state.dart';

class PlaylistPickBloc extends Bloc<PlaylistPickEvent, PlaylistPickState> {
  PlaylistPickBloc() : super(PlaylistPickInitial()) {
    on<PlaylistPickEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
