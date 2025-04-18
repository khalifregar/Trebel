// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:trebel/features/auth/data/repositories/admin_auth_repository.dart'
    as _i608;
import 'package:trebel/features/auth/data/repositories/auth_repository.dart'
    as _i342;
import 'package:trebel/features/auth/data/repositories/superadmin_auth_repository.dart'
    as _i966;
import 'package:trebel/features/auth/data/repositories/user_auth_repository.dart'
    as _i70;
import 'package:trebel/features/auth/domain/interfaces/i_admin_repository.dart'
    as _i847;
import 'package:trebel/features/auth/domain/interfaces/i_auth_repository.dart'
    as _i210;
import 'package:trebel/features/auth/domain/interfaces/i_superadmin_repository.dart'
    as _i304;
import 'package:trebel/features/auth/domain/interfaces/i_user_repository.dart'
    as _i146;
import 'package:trebel/features/auth/presentation/bloc/admin_auth/admin_auth_bloc.dart'
    as _i367;
import 'package:trebel/features/auth/presentation/bloc/superadmin_auth/superadmin_auth_bloc.dart'
    as _i446;
import 'package:trebel/features/auth/presentation/bloc/user_auth/user_auth_bloc.dart'
    as _i23;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i304.ISuperadminAuthRepository>(
        () => _i966.SuperAdminAuthRepository());
    gh.lazySingleton<_i146.IUserAuthRepository>(
        () => _i70.UserAuthRepository());
    gh.lazySingleton<_i847.IAdminAuthRepository>(
        () => _i608.AdminAuthRepository());
    gh.factory<_i367.AdminAuthBloc>(
        () => _i367.AdminAuthBloc(gh<_i847.IAdminAuthRepository>()));
    gh.factory<_i23.UserAuthBloc>(
        () => _i23.UserAuthBloc(gh<_i146.IUserAuthRepository>()));
    gh.lazySingleton<_i210.IAuthRepository>(() => _i342.AuthRepository(
          superadmin: gh<_i304.ISuperadminAuthRepository>(),
          admin: gh<_i847.IAdminAuthRepository>(),
          user: gh<_i146.IUserAuthRepository>(),
        ));
    gh.factory<_i446.SuperadminAuthBloc>(
        () => _i446.SuperadminAuthBloc(gh<_i304.ISuperadminAuthRepository>()));
    return this;
  }
}
