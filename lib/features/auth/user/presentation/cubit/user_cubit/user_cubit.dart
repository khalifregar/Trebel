import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/user/domain/entities/user.dart';
import 'package:trebel/features/auth/user/domain/interfaces/i_user_repository.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  final IUserRepository userRepository;

  UserCubit(this.userRepository) : super(const UserState.initial());

  Future<void> getUserProfile(String userId) async {
    try {
      emit(const UserState.loadInProgress());
      final result = await userRepository.getUserProfile(userId);
      result.fold(
        (failure) => emit(UserState.loadFailure(failure)),
        (user) => emit(UserState.loadSuccess(user)),
      );
    } catch (e) {
      emit(UserState.loadFailure(
          ServerFailure(message: e.toString(), errorCode: 400)));
    }
  }
}
