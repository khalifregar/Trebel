import 'package:dartz/dartz.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/data/models/requests/superadmin_auth_request.dart';
import 'package:trebel/features/auth/domain/entities/superadmin.dart';

abstract class ISuperadminAuthRepository {
  Future<Either<Failure, Superadmin>> login(SuperadminAuthRequest request);
  Future<Either<Failure, Superadmin>> register(SuperadminAuthRequest request);
  Future<Either<Failure, Superadmin>> getMe();
}