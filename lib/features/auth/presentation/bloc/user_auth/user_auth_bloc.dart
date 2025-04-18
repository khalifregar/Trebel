import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';

import 'package:trebel/core/common/errors/failure.dart';
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
    on<UserLoginRequested>((event, emit) async {
      try {
        emit(const UserAuthState.loading());
        final result = await _repo.login(event.request);
        result.fold(
          (failure) => emit(UserAuthState.failure(failure.message ?? 'Login gagal')),
          (user) => emit(UserAuthState.success(user)),
        );
      } catch (e) {
        emit(UserAuthState.failure(e.toString()));
      }
    });

    on<UserRegisterRequested>((event, emit) async {
      try {
        emit(const UserAuthState.loading());
        final result = await _repo.register(event.request);
        result.fold(
          (failure) => emit(UserAuthState.failure(failure.message ?? 'Register gagal')),
          (user) => emit(UserAuthState.success(user)),
        );
      } catch (e) {
        emit(UserAuthState.failure(e.toString()));
      }
    });

    on<UserGetMeRequested>((event, emit) async {
      try {
        emit(const UserAuthState.loading());
        final result = await _repo.getMe();
        result.fold(
          (failure) => emit(UserAuthState.failure(failure.message ?? 'Gagal ambil data')),
          (user) => emit(UserAuthState.success(user)),
        );
      } catch (e) {
        emit(UserAuthState.failure(e.toString()));
      }
    });
  }
}
