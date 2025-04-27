part of 'update_user_cubit.dart';

@freezed
class UpdateUserState with _$UpdateUserState {
  const factory UpdateUserState.initial() = _Initial;
  const factory UpdateUserState.loadInProgress() = _LoadInProgress;
  const factory UpdateUserState.loadFailure(Failure failure) = _LoadFailure;
  const factory UpdateUserState.loadSuccess(User user) = _LoadSuccess;
}
