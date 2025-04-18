part of 'superadmin_auth_bloc.dart';

@freezed
class SuperadminAuthEvent with _$SuperadminAuthEvent {
  const factory SuperadminAuthEvent.loginRequested(SuperadminAuthRequest request) = SuperadminLoginRequested;
  const factory SuperadminAuthEvent.registerRequested(SuperadminAuthRequest request) = SuperadminRegisterRequested;
  const factory SuperadminAuthEvent.getMeRequested() = SuperadminGetMeRequested;
}
