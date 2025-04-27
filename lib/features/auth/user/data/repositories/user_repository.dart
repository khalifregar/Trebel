import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trebel/core/common/errors/failure.dart';
import 'package:trebel/features/auth/user/data/datasources/remotes/user_api_service.dart';
import 'package:trebel/features/auth/user/data/models/dtos/user_dto.dart';
import 'package:trebel/features/auth/user/data/models/requests/user_request.dart';
import 'package:trebel/features/auth/user/domain/entities/user.dart';
import 'package:trebel/features/auth/user/domain/interfaces/i_user_repository.dart';
import 'package:trebel/injection.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final UserApiService api = getIt<UserApiService>();

  @override
  Future<Either<Failure, User>> getUserProfile(String userId) async {
    try {
      final res = await api.getUserProfile(userId);
      final body = _parse(res);

      final data = body['data'];
      if (data == null) {
        throw GeneralException(message: 'Data profil tidak ditemukan');
      }

      return Right(UserDto.fromJson(data).toDomain());
    } on DioException catch (e) {
      final msg = e.response?.data['message'] ??
          'Terjadi kesalahan saat mengambil profil';
      return Left(GeneralFailure(message: msg));
    } catch (e) {
      return Left(
          GeneralFailure(message: 'Terjadi kesalahan pada getUserProfile'));
    }
  }

  @override
  Future<Either<Failure, User>> storeUser(UserRequest request) async {
    try {
      final res = await api.storeUser(request);
      final body = _parse(res);

      final nestedData = body['data'];
      if (nestedData == null) {
        throw GeneralException(message: 'Data tidak ditemukan pada register');
      }

      return Right(UserDto.fromJson(nestedData).toDomain());
    } on DioException catch (e) {
      final msg =
          e.response?.data['message'] ?? 'Terjadi kesalahan saat register';
      return Left(GeneralFailure(message: msg));
    } catch (e) {
      return Left(GeneralFailure(message: 'Terjadi kesalahan pada storeUser'));
    }
  }

  @override
  Future<Either<Failure, User>> loginUser(
      String userId, UserRequest request) async {
    try {
      final res = await api.loginUser(userId, request);
      final body = _parse(res);

      final nestedData = body['data'];
      if (nestedData == null) {
        throw GeneralException(message: 'Data tidak ditemukan saat login');
      }

      return Right(UserDto.fromJson(nestedData).toDomain());
    } on DioException catch (e) {
      final msg = e.response?.data['message'] ?? 'Terjadi kesalahan saat login';
      return Left(GeneralFailure(message: msg));
    } catch (e) {
      return Left(GeneralFailure(message: 'Terjadi kesalahan pada loginUser'));
    }
  }

  @override
  Future<Either<Failure, Unit>> logoutUser(UserRequest request) async {
    try {
      final res = await api.logoutUser(request);
      final body = _parse(res);

      final message = body['message'];
      log('🧾 Logout berhasil: $message');

      return const Right(unit);
    } on DioException catch (e) {
      final msg =
          e.response?.data['message'] ?? 'Terjadi kesalahan saat logout';
      return Left(GeneralFailure(message: msg));
    } catch (e) {
      return Left(GeneralFailure(message: 'Terjadi kesalahan pada logoutUser'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteUser(String userId) async {
    try {
      final res = await api.deleteUser(userId);
      final body = _parse(res);

      final message = body['message'];
      log('🗑️ Delete user berhasil: $message');

      return const Right(unit);
    } on DioException catch (e) {
      final msg = e.response?.data['message'] ??
          'Terjadi kesalahan saat menghapus user';
      return Left(GeneralFailure(message: msg));
    } catch (e) {
      return Left(GeneralFailure(message: 'Terjadi kesalahan pada deleteUser'));
    }
  }

  @override
  Future<Either<Failure, User>> updateProfile(String userId) async {
    try {
      final res = await api.updateProfile(userId);
      final body = _parse(res);

      final data = body['data'];
      if (data == null) {
        throw GeneralException(
            message: 'Data tidak ditemukan saat update profil');
      }

      return Right(UserDto.fromJson(data).toDomain());
    } on DioException catch (e) {
      final msg =
          e.response?.data['message'] ?? 'Terjadi kesalahan saat update profil';
      return Left(GeneralFailure(message: msg));
    } catch (e) {
      return Left(
          GeneralFailure(message: 'Terjadi kesalahan pada updateProfile'));
    }
  }

  dynamic _parse(HttpResponse response) {
    if (response.data == null) {
      throw GeneralException(message: 'Invalid Response');
    }
    return response.data is String ? jsonDecode(response.data) : response.data;
  }
}
