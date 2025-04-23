import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trebel/features/auth/presentation/bloc/user_auth/user_auth_bloc.dart';
import 'package:trebel/features/playlist_pick/presentation/bloc/playlist_pick_bloc/playlist_pick_bloc.dart';
import 'package:trebel/locator.dart';

List<BlocProvider> buildBlocProviders() {
  return [
    BlocProvider<UserAuthBloc>(
      create: (_) =>
          locator<UserAuthBloc>()..add(const UserAuthEvent.getMeRequested()),
    ),
    BlocProvider<UserAuthBloc>(
      create: (_) => locator<UserAuthBloc>(),
    ),
        BlocProvider<PlaylistPickBloc>(
      create: (_) => locator<PlaylistPickBloc>(),
    ),
  ];
}
