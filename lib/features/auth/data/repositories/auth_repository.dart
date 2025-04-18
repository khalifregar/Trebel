import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/data/models/requests/admin_auth_request.dart';
import 'package:trebel/features/auth/data/models/requests/superadmin_auth_request.dart';
import 'package:trebel/features/auth/data/models/requests/user_auth_request.dart';
import 'package:trebel/features/auth/domain/entities/admin.dart';
import 'package:trebel/features/auth/domain/entities/superadmin.dart';
import 'package:trebel/features/auth/domain/entities/user.dart';
import 'package:trebel/features/auth/domain/interfaces/i_admin_repository.dart';
import 'package:trebel/features/auth/domain/interfaces/i_auth_repository.dart';
import 'package:trebel/features/auth/domain/interfaces/i_superadmin_repository.dart';
import 'package:trebel/features/auth/domain/interfaces/i_user_repository.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final ISuperadminAuthRepository superadmin;
  final IAdminAuthRepository admin;
  final IUserAuthRepository user;

  AuthRepository({
    required this.superadmin,
    required this.admin,
    required this.user,
  });

  @override
  Future<Either<Failure, Superadmin>> loginSuperadmin(SuperadminAuthRequest req) =>
      superadmin.login(req);

  @override
  Future<Either<Failure, Admin>> loginAdmin(AdminAuthRequest req) =>
      admin.login(req);

  @override
  Future<Either<Failure, User>> loginUser(UserAuthRequest req) =>
      user.login(req);

  @override
  Future<Either<Failure, Superadmin>> registerSuperadmin(SuperadminAuthRequest req) =>
      superadmin.register(req);

  @override
  Future<Either<Failure, Admin>> registerAdmin(AdminAuthRequest req) =>
      admin.register(req);

  @override
  Future<Either<Failure, User>> registerUser(UserAuthRequest req) =>
      user.register(req);

  @override
  Future<Either<Failure, Superadmin>> getMeSuperadmin() =>
      superadmin.getMe();

  @override
  Future<Either<Failure, Admin>> getMeAdmin() =>
      admin.getMe();

  @override
  Future<Either<Failure, User>> getMeUser() =>
      user.getMe();
}
