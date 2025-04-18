import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/data/datasources/remotes/auth_admin_api_service.dart';
import 'package:trebel/features/auth/data/models/dtos/admin_auth_dto.dart';
import 'package:trebel/features/auth/data/models/requests/admin_auth_request.dart';
import 'package:trebel/features/auth/domain/entities/admin.dart';
import 'package:trebel/features/auth/domain/interfaces/i_admin_repository.dart';
import 'package:trebel/injection.dart';
import 'package:dartz/dartz.dart';



@LazySingleton(as: IAdminAuthRepository)
class AdminAuthRepository implements IAdminAuthRepository {
  final AdminApiService api = getIt<AdminApiService>();

  @override
  Future<Either<Failure, Admin>> login(AdminAuthRequest request) async {
    try {
      final res = await api.login(request);
      final body = _parse(res);
      return Right(AdminAuthDto.fromJson(body).toDomain());
    } on GeneralException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Admin>> register(AdminAuthRequest request) async {
    try {
      final res = await api.register(request);
      final body = _parse(res);
      return Right(AdminAuthDto.fromJson(body).toDomain());
    } on GeneralException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Admin>> getMe() async {
    try {
      final res = await api.getMe();
      final body = _parse(res);
      return Right(AdminAuthDto.fromJson(body).toDomain());
    } on GeneralException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }

  dynamic _parse(HttpResponse response) {
    if (response.data == null) throw GeneralException(message: 'Invalid Response');
    return response.data is String ? jsonDecode(response.data) : response.data;
  }
}
