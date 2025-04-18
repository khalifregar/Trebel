import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'package:trebel/core/common/constant/api_constant.dart';
import 'package:trebel/core/common/network/authenticated_interceptor.dart';
import 'package:trebel/core/common/network/interceptor/interceptors.dart';

class ApiService {
  static final BaseOptions options = BaseOptions(
    baseUrl: ApiConstants.baseUrl,
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    contentType: Headers.jsonContentType,
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    },
  );

  /// Dio tanpa token
  final Dio dioUnauthorizedClient = Dio(options)
    ..interceptors.addAll([
      LogInterceptor(),
      AppInterceptors(),
      PrettyDioLogger(
        request: true,
        requestBody: true,
        responseBody: true,
        error: true,
        requestHeader: true,
      ),
    ]);

  /// Dio dengan token + logger
  final Dio dioAuthorizedClient = Dio(options)
    ..interceptors.addAll([
      LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
        error: true,
        requestHeader: true,
      ),
      AppInterceptors(),
      PrettyDioLogger(
        request: true,
        requestBody: true,
        responseBody: true,
        error: true,
        requestHeader: true,
      ),
      AuthenticatedInterceptor(Logger()),
    ]);

  /// Optional additional interceptor
  final InterceptorsWrapper interceptor = InterceptorsWrapper(
    onRequest: (options, handler) {
      const String userToken = "SharedPreferencesService.userToken";
      options.headers.addAll({
        "Authorization": "Bearer $userToken",
      });

      return handler.next(options);
    },
    onResponse: (response, handler) => handler.next(response),
    onError: (e, handler) => handler.next(e),
  );
}
