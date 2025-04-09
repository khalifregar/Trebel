import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'music_page_event.dart';
part 'music_page_state.dart';

class MusicPageBloc extends Bloc<MusicPageEvent, MusicPageState> {
  MusicPageBloc() : super(MusicPageInitial()) {
    on<MusicPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
