part of 'user_auth_bloc.dart';


@freezed
class UserAuthEvent with _$UserAuthEvent {
  const factory UserAuthEvent.loginRequested(UserAuthRequest request) = UserLoginRequested;
  const factory UserAuthEvent.registerRequested(UserAuthRequest request) = UserRegisterRequested;
  const factory UserAuthEvent.getMeRequested() = UserGetMeRequested;
}
