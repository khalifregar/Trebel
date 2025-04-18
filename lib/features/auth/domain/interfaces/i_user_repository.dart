import 'package:dartz/dartz.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/data/models/requests/user_auth_request.dart';
import 'package:trebel/features/auth/domain/entities/user.dart';

abstract class IUserAuthRepository {
  Future<Either<Failure, User>> login(UserAuthRequest request);
  Future<Either<Failure, User>> register(UserAuthRequest request);
  Future<Either<Failure, User>> getMe();
}