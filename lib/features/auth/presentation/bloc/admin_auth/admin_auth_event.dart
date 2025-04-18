part of 'admin_auth_bloc.dart';

@freezed
class AdminAuthEvent with _$AdminAuthEvent {
  const factory AdminAuthEvent.loginRequested(AdminAuthRequest request) = AdminLoginRequested;
  const factory AdminAuthEvent.registerRequested(AdminAuthRequest request) = AdminRegisterRequested;
  const factory AdminAuthEvent.getMeRequested() = AdminGetMeRequested;
}
