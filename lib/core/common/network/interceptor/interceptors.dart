import 'dart:developer';
import 'package:dio/dio.dart';

class AppInterceptors extends Interceptor {
  final Future<String?> Function()? getToken;

  AppInterceptors({this.getToken});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      final token = await getToken?.call();

      // Inject token if available
      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
      }

      // Logging request
      log('➡️ REQUEST [${options.method}] => PATH: ${options.uri}');
      log('Headers: ${options.headers}');
      if (options.data != null) {
        log('Body: ${options.data}');
      }

      handler.next(options);
    } catch (e, stackTrace) {
      log('❌ Error in onRequest: $e', stackTrace: stackTrace);
      handler.reject(
        DioException(
          requestOptions: options,
          error: 'Interceptor failed while injecting token',
        ),
      );
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('✅ RESPONSE [${response.statusCode}] => PATH: ${response.requestOptions.uri}');
    log('Response Data: ${response.data}');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('❌ ERROR [${err.response?.statusCode}] => PATH: ${err.requestOptions.uri}');
    log('Message: ${err.message}');
    log('Error Type: ${err.type}');
    if (err.response?.data != null) {
      log('Error Body: ${err.response?.data}');
    }

    // Handle specific status codes
    if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.sendTimeout) {
      log('⚠️ Timeout occurred');
    }

    // Optional: refresh token logic
    // if (err.response?.statusCode == 401) {
    //   await _handleTokenRefresh();
    // }

    handler.next(err);
  }

  // Future<void> _handleTokenRefresh() async {
  //   log('🔁 Attempting to refresh token...');
  //   // TODO: implement token refresh logic
  // }
}
