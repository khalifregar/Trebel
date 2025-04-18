part of 'user_auth_bloc.dart';

@freezed
class UserAuthState with _$UserAuthState {
  const factory UserAuthState.initial() = UserAuthInitial;
  const factory UserAuthState.loading() = UserAuthLoading;
  const factory UserAuthState.success(User user) = UserAuthSuccess;
  const factory UserAuthState.failure(String message) = UserAuthFailure;
}
