part of 'admin_auth_bloc.dart';

@freezed
class AdminAuthState with _$AdminAuthState {
  const factory AdminAuthState.initial() = AdminAuthInitial;
  const factory AdminAuthState.loading() = AdminAuthLoading;
  const factory AdminAuthState.success(Admin admin) = AdminAuthSuccess;
  const factory AdminAuthState.failure(String message) = AdminAuthFailure;
}
