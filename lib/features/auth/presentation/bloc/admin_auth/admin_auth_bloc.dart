import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';

import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/domain/interfaces/i_admin_repository.dart';
import 'package:trebel/features/auth/data/models/requests/admin_auth_request.dart';
import 'package:trebel/features/auth/domain/entities/admin.dart';

part 'admin_auth_bloc.freezed.dart';
part 'admin_auth_event.dart';
part 'admin_auth_state.dart';

@injectable
class AdminAuthBloc extends Bloc<AdminAuthEvent, AdminAuthState> {
  final IAdminAuthRepository _repo;

  AdminAuthBloc(this._repo) : super(const AdminAuthState.initial()) {
    on<AdminLoginRequested>((event, emit) async {
      try {
        emit(const AdminAuthState.loading());
        final result = await _repo.login(event.request);
        result.fold(
          (failure) => emit(AdminAuthState.failure(failure.message ?? 'Login gagal')),
          (admin) => emit(AdminAuthState.success(admin)),
        );
      } catch (e) {
        emit(AdminAuthState.failure(e.toString()));
      }
    });

    on<AdminRegisterRequested>((event, emit) async {
      try {
        emit(const AdminAuthState.loading());
        final result = await _repo.register(event.request);
        result.fold(
          (failure) => emit(AdminAuthState.failure(failure.message ?? 'Register gagal')),
          (admin) => emit(AdminAuthState.success(admin)),
        );
      } catch (e) {
        emit(AdminAuthState.failure(e.toString()));
      }
    });

    on<AdminGetMeRequested>((event, emit) async {
      try {
        emit(const AdminAuthState.loading());
        final result = await _repo.getMe();
        result.fold(
          (failure) => emit(AdminAuthState.failure(failure.message ?? 'Gagal ambil data')),
          (admin) => emit(AdminAuthState.success(admin)),
        );
      } catch (e) {
        emit(AdminAuthState.failure(e.toString()));
      }
    });
  }
}
