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
import 'package:trebel/features/auth/otp/data/repositories/otp_repository.dart'
    as _i948;
import 'package:trebel/features/auth/otp/domain/interfaces/i_otp_repository.dart'
    as _i9;
import 'package:trebel/features/auth/otp/presentation/cubit/otp_cubit.dart'
    as _i943;
import 'package:trebel/features/auth/user/data/repositories/user_repository.dart'
    as _i351;
import 'package:trebel/features/auth/user/domain/interfaces/i_user_repository.dart'
    as _i841;
import 'package:trebel/features/auth/user/presentation/cubit/delete_user_cubit/delete_user_cubit.dart'
    as _i386;
import 'package:trebel/features/auth/user/presentation/cubit/logout_user_cubit/logout_user_cubit.dart'
    as _i461;
import 'package:trebel/features/auth/user/presentation/cubit/store_user_cubit/store_user_cubit.dart'
    as _i844;
import 'package:trebel/features/auth/user/presentation/cubit/update_user_cubit/update_user_cubit.dart'
    as _i879;
import 'package:trebel/features/auth/user/presentation/cubit/user_cubit/user_cubit.dart'
    as _i206;
import 'package:trebel/features/playlist_pick/data/repositories/playlist_pick_repository.dart'
    as _i10;
import 'package:trebel/features/playlist_pick/domain/interfaces/i_playlist_pick_repository.dart'
    as _i717;
import 'package:trebel/features/playlist_pick/presentation/bloc/playlist_pick_bloc/playlist_pick_bloc.dart'
    as _i915;

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
    gh.lazySingleton<_i9.IOtpRepository>(() => _i948.OtpRepository());
    gh.lazySingleton<_i841.IUserRepository>(() => _i351.UserRepository());
    gh.lazySingleton<_i717.IPlaylistPickRepository>(
        () => _i10.PlaylistPickRepository());
    gh.factory<_i386.DeleteUserCubit>(
        () => _i386.DeleteUserCubit(gh<_i841.IUserRepository>()));
    gh.factory<_i461.LogoutUserCubit>(
        () => _i461.LogoutUserCubit(gh<_i841.IUserRepository>()));
    gh.factory<_i844.StoreUserCubit>(
        () => _i844.StoreUserCubit(gh<_i841.IUserRepository>()));
    gh.factory<_i879.UpdateUserCubit>(
        () => _i879.UpdateUserCubit(gh<_i841.IUserRepository>()));
    gh.factory<_i206.UserCubit>(
        () => _i206.UserCubit(gh<_i841.IUserRepository>()));
    gh.factory<_i915.PlaylistPickBloc>(
        () => _i915.PlaylistPickBloc(gh<_i717.IPlaylistPickRepository>()));
    gh.factory<_i943.OtpCubit>(() => _i943.OtpCubit(gh<_i9.IOtpRepository>()));
    return this;
  }
}
