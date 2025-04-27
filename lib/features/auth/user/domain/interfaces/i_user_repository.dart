import 'package:dartz/dartz.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/user/data/models/requests/user_request.dart';
import 'package:trebel/features/auth/user/domain/entities/user.dart';

abstract class IUserRepository {
  Future<Either<Failure, User>> getUserProfile(String userId);

  Future<Either<Failure, User>> storeUser(UserRequest request);

  Future<Either<Failure, User>> loginUser(String userId, UserRequest request);

  Future<Either<Failure, Unit>> logoutUser(UserRequest request);

  Future<Either<Failure, Unit>> deleteUser(String userId);

  Future<Either<Failure, User>> updateProfile(String userId);
}
