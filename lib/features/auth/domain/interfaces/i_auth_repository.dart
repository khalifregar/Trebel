import 'package:dartz/dartz.dart';
import 'package:trebel/core/common/errors/failure.dart';

import 'package:trebel/features/auth/data/models/requests/superadmin_auth_request.dart';
import 'package:trebel/features/auth/data/models/requests/admin_auth_request.dart';
import 'package:trebel/features/auth/data/models/requests/user_auth_request.dart';

import 'package:trebel/features/auth/domain/entities/superadmin.dart';
import 'package:trebel/features/auth/domain/entities/admin.dart';
import 'package:trebel/features/auth/domain/entities/user.dart';

abstract class IAuthRepository {
  // Superadmin
  Future<Either<Failure, Superadmin>> loginSuperadmin(SuperadminAuthRequest request);
  Future<Either<Failure, Superadmin>> registerSuperadmin(SuperadminAuthRequest request);
  Future<Either<Failure, Superadmin>> getMeSuperadmin();

  // Admin
  Future<Either<Failure, Admin>> loginAdmin(AdminAuthRequest request);
  Future<Either<Failure, Admin>> registerAdmin(AdminAuthRequest request);
  Future<Either<Failure, Admin>> getMeAdmin();

  // User
  Future<Either<Failure, User>> loginUser(UserAuthRequest request);
  Future<Either<Failure, User>> registerUser(UserAuthRequest request);
  Future<Either<Failure, User>> getMeUser();
}
