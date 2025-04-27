import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// Network & Core
import 'package:trebel/core/common/network/api_service.dart';

// Superadmin Repo & Bloc
import 'package:trebel/features/auth/user/domain/interfaces/i_user_repository.dart';
import 'package:trebel/features/playlist_pick/data/datasources/remotes/playlist_pick_api_service.dart';
import 'package:trebel/features/playlist_pick/data/repositories/playlist_pick_repository.dart';
import 'package:trebel/features/playlist_pick/domain/interfaces/i_playlist_pick_repository.dart';
import 'package:trebel/features/playlist_pick/presentation/bloc/playlist_pick_bloc/playlist_pick_bloc.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  final apiService = ApiService();

  // Dio
  locator.registerLazySingleton<Dio>(() => apiService.dioUnauthorizedClient);

  locator.registerLazySingleton<Dio>(
    () => apiService.dioAuthorizedClient,
    instanceName: 'AuthorizedClient',
  );

// Repository
locator.registerLazySingleton<IPlaylistPickRepository>(
  () => PlaylistPickRepository(),
);


// API service
locator.registerLazySingleton<PlaylistPickApiService>(
  () => PlaylistPickApiService(locator.get<Dio>(instanceName: 'AuthorizedClient')),
);

// Bloc
locator.registerFactory<PlaylistPickBloc>(
  () => PlaylistPickBloc(locator.get<IPlaylistPickRepository>()),
);


  // Tambahkan Admin/User repo & bloc di bawah sini kalau udah siap
}
