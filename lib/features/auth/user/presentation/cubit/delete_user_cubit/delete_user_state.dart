part of 'delete_user_cubit.dart';

@freezed
class DeleteUserState with _$DeleteUserState {
  const factory DeleteUserState.initial() = _Initial;
  const factory DeleteUserState.loadInProgress() = _LoadInProgress;
  const factory DeleteUserState.loadFailure(Failure failure) = _LoadFailure;
  const factory DeleteUserState.loadSuccess() = _LoadSuccess;
}
