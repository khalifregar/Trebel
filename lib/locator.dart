import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// Network & Core
import 'package:trebel/core/common/network/api_service.dart';

// Auth API Services
import 'package:trebel/features/auth/data/datasources/remotes/auth_superadmin_api_service.dart';
import 'package:trebel/features/auth/data/datasources/remotes/auth_admin_api_service.dart';
import 'package:trebel/features/auth/data/datasources/remotes/auth_user_api_service.dart';
import 'package:trebel/features/auth/data/repositories/user_auth_repository.dart';

// Superadmin Repo & Bloc
import 'package:trebel/features/auth/domain/interfaces/i_superadmin_repository.dart';
import 'package:trebel/features/auth/data/repositories/superadmin_auth_repository.dart';
import 'package:trebel/features/auth/domain/interfaces/i_user_repository.dart';
import 'package:trebel/features/auth/presentation/bloc/superadmin_auth/superadmin_auth_bloc.dart';
import 'package:trebel/features/auth/presentation/bloc/user_auth/user_auth_bloc.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  final apiService = ApiService();

  // Dio
  locator.registerLazySingleton<Dio>(() => apiService.dioUnauthorizedClient);

  locator.registerLazySingleton<Dio>(
    () => apiService.dioAuthorizedClient,
    instanceName: 'AuthorizedClient',
  );

  // Auth API per role
  locator.registerLazySingleton<SuperAdminApiService>(
    () => SuperAdminApiService(locator.get<Dio>()),
  );

  locator.registerLazySingleton<AdminApiService>(
    () => AdminApiService(locator.get<Dio>()),
  );

locator.registerLazySingleton<UserApiService>(
  () => UserApiService(locator.get<Dio>(instanceName: 'AuthorizedClient')), // ✅ Authorized
);


// User Repository
locator.registerLazySingleton<IUserAuthRepository>(
  () => UserAuthRepository(),
);

// User Bloc
locator.registerFactory<UserAuthBloc>(
  () => UserAuthBloc(locator.get<IUserAuthRepository>()),
);


  // Tambahkan Admin/User repo & bloc di bawah sini kalau udah siap
}
