part of 'store_user_cubit.dart';

@freezed
class StoreUserState with _$StoreUserState {
  const factory StoreUserState.initial() = _Initial;
  const factory StoreUserState.loadInProgress() = _LoadInProgress;
  const factory StoreUserState.loadFailure(Failure failure) = _LoadFailure;
  const factory StoreUserState.loadSuccess(User user) = _LoadSuccess;
}
