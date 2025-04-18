import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:trebel/core/common/helpers/preference_helper.dart';
import 'package:trebel/core/common/constant/preference_constants.dart';

class AuthenticatedInterceptor extends Interceptor {
  final Logger logger;

  AuthenticatedInterceptor(this.logger);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      final token = await getStringValuePreference(key: PreferenceConstants.token);

      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
        logger.i('🛡 Auth Token injected: $token');
      } else {
        logger.w('🚫 No token found in preferences');
      }

      handler.next(options);
    } catch (e, stackTrace) {
      logger.e('❌ Error in AuthenticatedInterceptor', error: e, stackTrace: stackTrace);
      handler.next(options); // continue anyway
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.e('❌ Dio Error', error: err.message, stackTrace: err.stackTrace);
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.i('✅ Response ${response.statusCode} from ${response.requestOptions.path}');
    super.onResponse(response, handler);
  }
}
