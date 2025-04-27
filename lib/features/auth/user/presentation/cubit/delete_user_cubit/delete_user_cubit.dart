import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/user/domain/interfaces/i_user_repository.dart';

part 'delete_user_cubit.freezed.dart';
part 'delete_user_state.dart';

@injectable
class DeleteUserCubit extends Cubit<DeleteUserState> {
  final IUserRepository userRepository;

  DeleteUserCubit(this.userRepository) : super(const DeleteUserState.initial());

  Future<void> deleteUser(String userId) async {
    try {
      emit(const DeleteUserState.loadInProgress());
      final result = await userRepository.deleteUser(userId);
      result.fold(
        (failure) => emit(DeleteUserState.loadFailure(failure)),
        (_) => emit(const DeleteUserState.loadSuccess()),
      );
    } catch (e) {
      emit(DeleteUserState.loadFailure(
          ServerFailure(message: e.toString(), errorCode: 400)));
    }
  }
}
