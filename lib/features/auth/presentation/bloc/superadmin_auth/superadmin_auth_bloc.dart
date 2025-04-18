import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';

import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/domain/interfaces/i_superadmin_repository.dart';
import 'package:trebel/features/auth/data/models/requests/superadmin_auth_request.dart';
import 'package:trebel/features/auth/domain/entities/superadmin.dart';

part 'superadmin_auth_bloc.freezed.dart';
part 'superadmin_auth_event.dart';
part 'superadmin_auth_state.dart';

@injectable
class SuperadminAuthBloc extends Bloc<SuperadminAuthEvent, SuperadminAuthState> {
  final ISuperadminAuthRepository _repo;

  SuperadminAuthBloc(this._repo) : super(const SuperadminAuthState.initial()) {
    on<SuperadminLoginRequested>((event, emit) async {
      try {
        emit(const SuperadminAuthState.loading());
        final result = await _repo.login(event.request);
        result.fold(
          (failure) => emit(SuperadminAuthState.failure(failure.message ?? 'Login gagal')),
          (superadmin) => emit(SuperadminAuthState.success(superadmin)),
        );
      } catch (e) {
        emit(SuperadminAuthState.failure(e.toString()));
      }
    });

    on<SuperadminRegisterRequested>((event, emit) async {
      try {
        emit(const SuperadminAuthState.loading());
        final result = await _repo.register(event.request);
        result.fold(
          (failure) => emit(SuperadminAuthState.failure(failure.message ?? 'Register gagal')),
          (superadmin) => emit(SuperadminAuthState.success(superadmin)),
        );
      } catch (e) {
        emit(SuperadminAuthState.failure(e.toString()));
      }
    });

    on<SuperadminGetMeRequested>((event, emit) async {
      try {
        emit(const SuperadminAuthState.loading());
        final result = await _repo.getMe();
        result.fold(
          (failure) => emit(SuperadminAuthState.failure(failure.message ?? 'Gagal ambil data')),
          (superadmin) => emit(SuperadminAuthState.success(superadmin)),
        );
      } catch (e) {
        emit(SuperadminAuthState.failure(e.toString()));
      }
    });
  }
}
