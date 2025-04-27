part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loadInProgress() = _LoadInProgress;
  const factory UserState.loadFailure(Failure failure) = _LoadFailure;
  const factory UserState.loadSuccess(User user) = _LoadSuccess;
}
