import 'package:dartz/dartz.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/data/models/requests/admin_auth_request.dart';
import 'package:trebel/features/auth/domain/entities/admin.dart';

abstract class IAdminAuthRepository {
  Future<Either<Failure, Admin>> login(AdminAuthRequest request);
  Future<Either<Failure, Admin>> register(AdminAuthRequest request);
  Future<Either<Failure, Admin>> getMe();
}