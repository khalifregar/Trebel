import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/user/domain/entities/user.dart';
import 'package:trebel/features/auth/user/domain/interfaces/i_user_repository.dart';
import 'package:trebel/features/auth/user/data/models/requests/user_request.dart';

part 'store_user_cubit.freezed.dart';
part 'store_user_state.dart';

@injectable
class StoreUserCubit extends Cubit<StoreUserState> {
  final IUserRepository userRepository;

  StoreUserCubit(this.userRepository) : super(const StoreUserState.initial());

  Future<void> storeUser(UserRequest request) async {
    try {
      emit(const StoreUserState.loadInProgress());
      final result = await userRepository.storeUser(request);
      result.fold(
        (failure) => emit(StoreUserState.loadFailure(failure)),
        (user) => emit(StoreUserState.loadSuccess(user)),
      );
    } catch (e) {
      emit(StoreUserState.loadFailure(
          ServerFailure(message: e.toString(), errorCode: 400)));
    }
  }
}
