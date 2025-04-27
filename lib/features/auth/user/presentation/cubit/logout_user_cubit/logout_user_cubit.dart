import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/user/domain/interfaces/i_user_repository.dart';
import 'package:trebel/features/auth/user/data/models/requests/user_request.dart';

part 'logout_user_cubit.freezed.dart';
part 'logout_user_state.dart';

@injectable
class LogoutUserCubit extends Cubit<LogoutUserState> {
  final IUserRepository userRepository;

  LogoutUserCubit(this.userRepository) : super(const LogoutUserState.initial());

  Future<void> logoutUser(UserRequest request) async {
    try {
      emit(const LogoutUserState.loadInProgress());
      final result = await userRepository.logoutUser(request);
      result.fold(
        (failure) => emit(LogoutUserState.loadFailure(failure)),
        (_) => emit(const LogoutUserState.loadSuccess()),
      );
    } catch (e) {
      emit(LogoutUserState.loadFailure(
          ServerFailure(message: e.toString(), errorCode: 400)));
    }
  }
}
