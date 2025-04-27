import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/user/domain/entities/user.dart';
import 'package:trebel/features/auth/user/domain/interfaces/i_user_repository.dart';

part 'update_user_cubit.freezed.dart';
part 'update_user_state.dart';

@injectable
class UpdateUserCubit extends Cubit<UpdateUserState> {
  final IUserRepository userRepository;

  UpdateUserCubit(this.userRepository) : super(const UpdateUserState.initial());

  Future<void> updateProfile(String userId) async {
    try {
      emit(const UpdateUserState.loadInProgress());
      final result = await userRepository.updateProfile(userId);
      result.fold(
        (failure) => emit(UpdateUserState.loadFailure(failure)),
        (user) => emit(UpdateUserState.loadSuccess(user)),
      );
    } catch (e) {
      emit(UpdateUserState.loadFailure(
          ServerFailure(message: e.toString(), errorCode: 400)));
    }
  }
}
