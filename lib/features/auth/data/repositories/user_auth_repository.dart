

import 'dart:convert';

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
      return Right(UserAuthDto.fromJson(body).toDomain());
    } on GeneralException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }

@override
Future<Either<Failure, User>> register(UserAuthRequest request) async {
  try {
    final res = await api.register(request);
    final body = _parse(res);

    final nestedData = body['data']?['data']; // ambil sampai dalam
    if (nestedData == null) {
      throw GeneralException(message: 'Data tidak ditemukan di response');
    }

    debugPrint('🧾 Mapping DTO ke domain, token: ${nestedData['access_token']}');
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
      return Right(UserAuthDto.fromJson(body).toDomain());
    } on GeneralException catch (e) {
      return Left(GeneralFailure(message: e.message));
    }
  }

  dynamic _parse(HttpResponse response) {
    if (response.data == null) throw GeneralException(message: 'Invalid Response');
    return response.data is String ? jsonDecode(response.data) : response.data;
  }
}
