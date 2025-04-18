import 'dart:developer';
import 'package:dio/dio.dart';

class AppInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    log('➡️ [REQUEST] => ${options.method.toUpperCase()} ${options.uri}');
    log('Headers: ${options.headers}');
    if (options.data != null) {
      log('Body: ${options.data}');
    }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('✅ [RESPONSE] => ${response.statusCode} ${response.requestOptions.uri}');
    log('Response Data: ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('❌ [ERROR] => ${err.type} ${err.requestOptions.uri}');
    log('Status Code: ${err.response?.statusCode}');
    log('Message: ${err.message}');
    if (err.response?.data != null) {
      log('Error Data: ${err.response?.data}');
    }

    super.onError(err, handler);
  }
}
