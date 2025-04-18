import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/data/datasources/remotes/auth_superadmin_api_service.dart';
import 'package:trebel/features/auth/data/models/dtos/superadmin_auth_dto.dart';
import 'package:trebel/features/auth/data/models/requests/superadmin_auth_request.dart';
import 'package:trebel/features/auth/domain/entities/superadmin.dart';
import 'package:trebel/features/auth/domain/interfaces/i_superadmin_repository.dart';
import 'package:trebel/injection.dart';
import 'package:dartz/dartz.dart';




@LazySingleton(as: ISuperadminAuthRepository)
class SuperAdminAuthRepository implements ISuperadminAuthRepository {
  final SuperAdminApiService api = getIt<SuperAdminApiService>();

  @override
  Future<Either<Failure, Superadmin>> login(SuperadminAuthRequest request) async {
    try {
      final res = await api.login(request);
      final body = _parse(res);
      return Right(SuperadminAuthDto.fromJson(body).toDomain());
    } on GeneralException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Superadmin>> register(SuperadminAuthRequest request) async {
    try {
      final res = await api.register(request);
      final body = _parse(res);
      return Right(SuperadminAuthDto.fromJson(body).toDomain());
    } on GeneralException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Superadmin>> getMe() async {
    try {
      final res = await api.getMe();
      final body = _parse(res);
      return Right(SuperadminAuthDto.fromJson(body).toDomain());
    } on GeneralException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }

  dynamic _parse(HttpResponse response) {
    if (response.data == null) throw GeneralException(message: 'Invalid Response');
    return response.data is String ? jsonDecode(response.data) : response.data;
  }
}
