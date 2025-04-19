import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';

import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/core/common/helpers/preference_helper.dart';
import 'package:trebel/core/common/constant/preference_constants.dart';
import 'package:trebel/features/auth/data/models/requests/user_auth_request.dart';
import 'package:trebel/features/auth/domain/interfaces/i_user_repository.dart';
import 'package:trebel/features/auth/domain/entities/user.dart';

part 'user_auth_bloc.freezed.dart';
part 'user_auth_event.dart';
part 'user_auth_state.dart';

@injectable
class UserAuthBloc extends Bloc<UserAuthEvent, UserAuthState> {
  final IUserAuthRepository _repo;

  UserAuthBloc(this._repo) : super(const UserAuthState.initial()) {
    // 🔐 LOGIN
on<UserLoginRequested>((event, emit) async {
  emit(const UserAuthState.loading());
  final result = await _repo.login(event.request);

  await result.fold(
    (failure) async {
      emit(UserAuthState.failure(failure.message ?? 'Login gagal'));
    },
    (user) async {
      final token = user.accessToken;
      if (token != null && token.isNotEmpty) {
        final saved = await setStringValuePreference(
          key: PreferenceConstants.token,
          value: token,
        );

        if (!saved) {
          emit(const UserAuthState.failure('Gagal menyimpan token'));
          return;
        }

        debugPrint('✅ Token berhasil disimpan: $token');
      } else {
        emit(const UserAuthState.failure('Token kosong saat login'));
        return;
      }

      emit(UserAuthState.success(user));
    },
  );
});


    // 📝 REGISTER
    on<UserRegisterRequested>((event, emit) async {
      emit(const UserAuthState.loading());
      final result = await _repo.register(event.request);
      await result.fold(
        (failure) async {
          emit(UserAuthState.failure(failure.message ?? 'Register gagal'));
        },
        (user) async {
          final token = user.accessToken;
          if (token != null && token.isNotEmpty) {
            final saved = await setStringValuePreference(
              key: PreferenceConstants.token,
              value: token,
            );

            if (!saved) {
              emit(const UserAuthState.failure('Gagal menyimpan token'));
              return;
            }
          }

          emit(UserAuthState.success(user));
        },
      );
    });

    // 🔍 GET ME
    on<UserGetMeRequested>((event, emit) async {
      emit(const UserAuthState.loading());
      final result = await _repo.getMe();
      result.fold(
        (failure) =>
            emit(UserAuthState.failure(failure.message ?? 'Gagal ambil data')),
        (user) => emit(UserAuthState.success(user)),
      );
    });

    // 🚪 LOGOUT
    on<UserLogoutRequested>((event, emit) async {
      emit(const UserAuthState.loading());
      final result = await _repo.logout();
      await result.fold(
        (failure) async {
          emit(UserAuthState.failure(failure.message ?? 'Logout gagal'));
        },
        (_) async {
          await removeValuePreference(key: PreferenceConstants.token);
          emit(const UserAuthState.loggedOut());
        },
      );
    });
  }
}
