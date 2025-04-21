import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/data/datasources/remotes/auth_user_api_service.dart';
import 'package:trebel/features/auth/data/models/dtos/user_auth_dto.dart';
import 'package:trebel/features/auth/data/models/requests/user_auth_request.dart';
import 'package:trebel/features/auth/domain/entities/user.dart';
import 'package:trebel/features/auth/domain/interfaces/i_user_repository.dart';
import 'package:trebel/injection.dart';
import 'package:dartz/dartz.dart';

@LazySingleton(as: IUserAuthRepository)
class UserAuthRepository implements IUserAuthRepository {
  final UserApiService api = getIt<UserApiService>();

  @override
  Future<Either<Failure, User>> login(UserAuthRequest request) async {
    try {
      final res = await api.login(request);
      final body = _parse(res);
      final nestedData = body['data']?['data'];

      if (nestedData == null) {
        throw GeneralException(message: 'Data tidak ditemukan di response');
      }

      final dto = UserAuthDto.fromJson(nestedData);
      return Right(dto.toDomain());
    } on DioException catch (e) {
      final msg = e.response?.data['message'] ?? 'Terjadi kesalahan';
      return Left(GeneralFailure(message: msg));
    } catch (e) {
      return Left(GeneralFailure(message: 'Terjadi kesalahan pada login'));
    }
  }

  @override
  Future<Either<Failure, User>> register(UserAuthRequest request) async {
    try {
      final res = await api.register(request);
      final body = _parse(res);

      final nestedData = body['data']?['data'];
      if (nestedData == null) {
        throw GeneralException(message: 'Data tidak ditemukan di response');
      }
      return Right(UserAuthDto.fromJson(nestedData).toDomain());
    } on GeneralException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, User>> getMe() async {
    try {
      final res = await api.getMe();
      final body = _parse(res);

      final data = body['data'];
      if (data == null) {
        throw GeneralException(
            message: 'Data tidak ditemukan di response getMe');
      }

      return Right(UserAuthDto.fromJson(data).toDomain());
    } on GeneralException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      final res = await api.logout();
      final body = _parse(res);

      final message = body['message'];
      log('🧾 Logout berhasil: $message');

      return const Right(unit);
    } on GeneralException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }

  dynamic _parse(HttpResponse response) {
    if (response.data == null)
      throw GeneralException(message: 'Invalid Response');
    return response.data is String ? jsonDecode(response.data) : response.data;
  }
}
