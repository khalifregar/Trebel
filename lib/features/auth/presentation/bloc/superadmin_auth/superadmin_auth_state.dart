part of 'superadmin_auth_bloc.dart';

@freezed
class SuperadminAuthState with _$SuperadminAuthState {
  const factory SuperadminAuthState.initial() = SuperadminAuthInitial;
  const factory SuperadminAuthState.loading() = SuperadminAuthLoading;
  const factory SuperadminAuthState.success(Superadmin superadmin) = SuperadminAuthSuccess;
  const factory SuperadminAuthState.failure(String message) = SuperadminAuthFailure;
}
