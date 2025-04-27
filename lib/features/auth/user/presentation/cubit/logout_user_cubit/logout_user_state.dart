part of 'logout_user_cubit.dart';

@freezed
class LogoutUserState with _$LogoutUserState {
  const factory LogoutUserState.initial() = _Initial;
  const factory LogoutUserState.loadInProgress() = _LoadInProgress;
  const factory LogoutUserState.loadFailure(Failure failure) = _LoadFailure;
  const factory LogoutUserState.loadSuccess() = _LoadSuccess;
}
